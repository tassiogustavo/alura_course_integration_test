import 'package:alura_flutter_melhorias_client_control/models/client.dart';
import 'package:alura_flutter_melhorias_client_control/models/client_type.dart';
import 'package:alura_flutter_melhorias_client_control/models/clients.dart';
import 'package:alura_flutter_melhorias_client_control/models/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Clients Test', () {
    final tassio = Client(
      name: 'Tassio',
      email: 'tassio@gmail.com',
      type: ClientType(name: 'Gold', icon: Icons.star),
    );

    test('Clients model should add new client', () {
      var clients = Clients(clients: []);
      clients.add(tassio);
      clients.add(tassio);
      expect(clients.clients, [tassio, tassio]);
    });

    test('Clients model should remove old client', () {
      var clients = Clients(clients: [tassio, tassio, tassio]);
      clients.remove(0);
      clients.remove(1);
      expect(clients.clients, [tassio]);
    });
  });

  group('Type Test', () {
    final gold = ClientType(name: 'Gold', icon: Icons.star);

    test('Types model should add new type', () {
      var types = Types(types: []);
      types.add(gold);
      types.add(gold);
      expect(types.types, [gold, gold]);
    });

    test('Types model should remove old type', () {
      var types = Types(types: [gold, gold, gold]);
      types.remove(0);
      types.remove(1);
      expect(types.types, [gold]);
    });
  });
}
