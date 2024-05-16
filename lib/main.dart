import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solution House',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _cepController = TextEditingController();
  String _cep = ' '; // Valor inicial do CEP

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Menu'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'DISPONÍVEIS'),
              Tab(text: 'MEUS PEDIDOS'),
            ],
          ),
        ),
        drawer: Drawer(
          // Menu lateral
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.account_circle,
                                size: 40,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Nome do Usuário',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(
                                onPressed: () {
                                  // Implementar ação do ícone de sino
                                },
                                icon: Icon(
                                  Icons.notifications,
                                  size: 20,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Notificações',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Pedidos Disponíveis',
                  style: TextStyle(
                    fontSize: 13, // Tamanho da fonte
                    fontWeight: FontWeight.bold, // Negrito
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                  padding: EdgeInsets.all(4), // Reduzindo o preenchimento
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white, // Cor do ícone
                    size: 15, // Reduzindo o tamanho do ícone
                  ),
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),
              ListTile(
                title: Text(
                  'Meus Pedidos',
                  style: TextStyle(
                    fontSize: 13, // Tamanho da fonte
                    fontWeight: FontWeight.bold, // Negrito
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                  padding: EdgeInsets.all(4), // Reduzindo o preenchimento
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white, // Cor do ícone
                    size: 15, // Reduzindo o tamanho do ícone
                  ),
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),
              ListTile(
                title: Text(
                  'Meu Perfil',
                  style: TextStyle(
                    fontSize: 13, // Tamanho da fonte
                    fontWeight: FontWeight.bold, // Negrito
                  ),
                ),
                trailing: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple,
                  ),
                  padding: EdgeInsets.all(4), // Reduzindo o preenchimento
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white, // Cor do ícone
                    size: 15, // Reduzindo o tamanho do ícone
                  ),
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.attach_money_rounded,
                  color: Colors.black, // Cor do ícone
                  size: 22, // Reduzindo o tamanho do ícone
                ), // Ícone de seta para a direita
                title: Text(
                  'Indique e Ganhe!',
                  style: TextStyle(
                    fontSize: 15, // Tamanho da fonte
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey, // Cor do ícone
                  size: 15, // Reduzindo o tamanho do ícone
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.currency_exchange_rounded,
                  color: Colors.black, // Cor do ícone
                  size: 22, // Reduzindo o tamanho do ícone
                ), // Ícone de seta para a direita
                title: Text(
                  'Comprar Moedas',
                  style: TextStyle(
                    fontSize: 15, // Tamanho da fonte
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey, // Cor do ícone
                  size: 15, // Reduzindo o tamanho do ícone
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.library_books_rounded,
                  color: Colors.black, // Cor do ícone
                  size: 22, // Reduzindo o tamanho do ícone
                ), // Ícone de seta para a direita
                title: Text(
                  'Academia Ninja',
                  style: TextStyle(
                    fontSize: 15, // Tamanho da fonte
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey, // Cor do ícone
                  size: 15, // Reduzindo o tamanho do ícone
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.search_rounded,
                  color: Colors.black, // Cor do ícone
                  size: 22, // Reduzindo o tamanho do ícone
                ), // Ícone de seta para a direita
                title: Text(
                  'Contratar um Profissional',
                  style: TextStyle(
                    fontSize: 15, // Tamanho da fonte
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey, // Cor do ícone
                  size: 15, // Reduzindo o tamanho do ícone
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.phone_android_rounded,
                  color: Colors.black, // Cor do ícone
                  size: 22, // Reduzindo o tamanho do ícone
                ), // Ícone de seta para a direita
                title: Text(
                  'Fale Conosco',
                  style: TextStyle(
                    fontSize: 15, // Tamanho da fonte
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey, // Cor do ícone
                  size: 15, // Reduzindo o tamanho do ícone
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),

              ListTile(
                leading: Icon(
                  Icons.logout_rounded,
                  color: Colors.black, // Cor do ícone
                  size: 16, // Reduzindo o tamanho do ícone
                ), // Ícone de seta para a direita
                title: Text(
                  'Sair',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold, // Tamanho da fonte
                  ),
                ),
                onTap: () {
                  // Implementar ação do item 2
                },
              ),
              // Outros itens do menu
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(height: 20), // Espaço maior entre a aba e os banners
                  // Slide de banners
                  CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                    ),
                    items: [
                      // Primeiro banner
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.purple,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'SOS RS',
                                      style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Juntos, fazemos a \ndiferença!',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    Text(
                                      'Estamos mobilizados para apoiar \n as vítimas das enchentes no RS',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    SizedBox(height: 10.0),
                                    ElevatedButton(
                                      onPressed: () {
                                        // Implementar ação do botão
                                      },
                                      child: Text(
                                        'Descubra como',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.amber,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Icon(
                                Icons.handshake, // Ícone de aperto de mãos
                                size:
                                    50, // Tamanho do ícone (ajuste conforme necessário)
                                color: Colors
                                    .white, // Cor do ícone (ajuste conforme necessário)
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Outros banners
                    ],
                  ),
                  // Restante do conteúdo da aba 1
                  // Texto de CEP e botão "Editar"
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Center(
                          child: Text(
                            'Pedidos próximos ao CEP: $_cep',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ), // Centraliza o texto do CEP
                        TextButton(
                          onPressed: _openEditDialog, // Abrir caixa de diálogo
                          child:
                              Text('Editar', style: TextStyle(fontSize: 14.0)),
                        ),
                      ],
                    ),
                  ),
                  // Botões de filtragem
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.filter_alt),
                            onPressed: () {
                              // Implementar ação para abrir opções de filtro
                            },
                          ),
                          Text('Filtrar'),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.reorder),
                            onPressed: () {
                              // Implementar ação para ordenar serviços
                            },
                          ),
                          Text('Ordenar'),
                        ],
                      ),
                    ],
                  ),
                  // Lista de serviços
                  Column(
                    children: <Widget>[
                      // Serviço 1
                      GestureDetector(
                        onTap: () {
                          // Implemente a ação desejada ao clicar no serviço 1
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Cortador de Grama - Tramotina',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.person),
                                  SizedBox(width: 5.0),
                                  Text('Joel Soares'),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on),
                                  SizedBox(width: 5.0),
                                  Text('A 3 km - Andorinhas'),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.warning),
                                  SizedBox(width: 5.0),
                                  Text('Serviço urgente'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Serviço 2
                      GestureDetector(
                        onTap: () {
                          // Implemente a ação desejada ao clicar no serviço 2
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Instalador de Ar Condicionado - Midea',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.person),
                                  SizedBox(width: 5.0),
                                  Text('Maria Silva'),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on),
                                  SizedBox(width: 5.0),
                                  Text('A 5 km - Centro'),
                                ],
                              ),
                              // Aqui você pode adicionar mais informações do serviço 2
                            ],
                          ),
                        ),
                      ),
                      // Serviço 3
                      GestureDetector(
                        onTap: () {
                          // Implemente a ação desejada ao clicar no serviço 3
                        },
                        child: Container(
                          margin: EdgeInsets.all(10.0),
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    'Alicate de Crimpagem',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.person),
                                  SizedBox(width: 5.0),
                                  Text('Pedro Oliveira'),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(Icons.location_on),
                                  SizedBox(width: 5.0),
                                  Text('A 2 km - Jardim da Penha'),
                                ],
                              ),
                              // Aqui você pode adicionar mais informações do serviço 3
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Conteúdo da aba "MEUS PEDIDOS"
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          50.0), // Adicionando padding ao redor da imagem
                      child: Image.asset(
                        'imagem.png',
                        width: 200, // Definindo a largura da imagem
                        height: 200, // Definindo a altura da imagem
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Comece a liberar pedidos e \ntenha mais clientes todos os dias!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Espaço entre o texto e o botão
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Implemente a ação do botão "Comprar moedas"
                      },
                      child: Text(
                        'Comprar moedas',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )

            // Aqui você pode adicionar o restante do conteúdo da aba "MEUS PEDIDOS"
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Implementar ação para adicionar serviço
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  // Método para abrir a caixa de diálogo de edição de CEP
  void _openEditDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Editar CEP'),
          content: TextField(
            controller: _cepController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Novo CEP'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Atualizar o valor do CEP e fechar a caixa de diálogo
                setState(() {
                  _cep = _cepController.text;
                });
                Navigator.of(context).pop();
              },
              child: Text('Salvar'),
            ),
          ],
        );
      },
    );
  }
}
