
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef int address ;
typedef int BOOL ;


 int AF_INET ;
 int INADDR_ANY ;
 int IPPROTO_TCP ;
 scalar_t__ SOCKET_ERROR ;
 int SOCK_STREAM ;
 int TCP_NODELAY ;
 int WINS_ErrorMessage (int ) ;
 int WSAGetLastError () ;
 int WinPrint (char*,...) ;
 int bind (int,void*,int) ;
 int closesocket (int) ;
 int htonl (int ) ;
 int htons (int ) ;
 int memset (char*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;
 int socket (int ,int ,int ) ;

int WINS_OpenReliableSocket( int port ){
 int newsocket;
 struct sockaddr_in address;
 BOOL _true = 0xFFFFFFFF;



 if ( ( newsocket = socket( AF_INET, SOCK_STREAM, 0 ) ) == -1 ) {
  WinPrint( "WINS_OpenReliableSocket: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  return -1;
 }

 memset( (char *) &address, 0, sizeof( address ) );
 address.sin_family = AF_INET;
 address.sin_addr.s_addr = htonl( INADDR_ANY );
 address.sin_port = htons( (u_short)port );
 if ( bind( newsocket, (void *)&address, sizeof( address ) ) == -1 ) {
  WinPrint( "WINS_OpenReliableSocket: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  closesocket( newsocket );
  return -1;
 }


 if ( setsockopt( newsocket, IPPROTO_TCP, TCP_NODELAY, (void *) &_true, sizeof( int ) ) == SOCKET_ERROR ) {
  WinPrint( "WINS_OpenReliableSocket: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  WinPrint( "setsockopt error\n" );
 }

 return newsocket;
}
