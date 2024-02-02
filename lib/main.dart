// Made by devilAPI with <3
// https://github.com/devilAPI/web2apk

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

var appName = "DabTracker";
var url = "https://dab-tracker.vercel.app/";
var appColor = Colors.blue;

class MyApp extends StatelessWidget {
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: appColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(appName),
        ),
        body: Center(
          child: WebView(
            initialUrl: url,
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
          ),
        ),
      ),
    );
  }
}
