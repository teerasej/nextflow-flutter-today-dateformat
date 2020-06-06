import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {

  // Intl.defaultLocale = "th";
  initializeDateFormatting();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nextflow Flutter Widget Today',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter 3 นาที: เสกวันเดือนปี'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  DateTime myDateTime = DateTime.now();


  @override
  Widget build(BuildContext context) {
   
    // var formatter = DateFormat.y();
    // var formatter = DateFormat.yM();
    // var formatter = DateFormat.yMMM();
    // var formatter = DateFormat.yMMMM();
    // var formatter = DateFormat.yMMMMd();
    // var formatter = DateFormat.yMMMMEEEEd();
    var formatter = DateFormat('วันนี้วันที่ d เดือน MMM ปี y', 'th');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Wrap(
          direction: Axis.vertical,
          spacing: 20,
          children: <Widget>[
            Text(
              '${formatter.format(myDateTime)}',
              style: TextStyle(fontSize: 24)
            ),
          ],
        ),
      )
    );
  }
}