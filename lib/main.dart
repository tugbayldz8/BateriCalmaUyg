import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  DrumMachine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  DrumPage({Key? key}) : super(key: key);

  final oynatici = AudioCache();

  void sesCal(String ses) {
    oynatici.play('$ses.wav');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('bip', Colors.purple),
                  ),
                  Expanded(child: buildDrumPad('bongo', Colors.blue)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap1', Colors.yellow),
                  ),
                  Expanded(
                    child: buildDrumPad('clap2', Colors.pink),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('clap3', Colors.green),
                  ),
                  Expanded(
                    child: buildDrumPad('crash', Colors.deepPurple),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: buildDrumPad('how', Colors.red),
                  ),
                  Expanded(
                    child: buildDrumPad('oobah', Colors.cyan),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton buildDrumPad(String ses, Color renk) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.all(8),
      ),
      onPressed: () {
        sesCal(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
