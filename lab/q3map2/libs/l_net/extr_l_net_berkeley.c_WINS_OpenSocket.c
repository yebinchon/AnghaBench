
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_long ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef int address ;


 int AF_INET ;
 int FIONBIO ;
 int INADDR_ANY ;
 int IPPROTO_UDP ;
 int PF_INET ;
 int SOCKET_ERROR ;
 int SOCK_DGRAM ;
 int WINS_ErrorMessage (int ) ;
 int WSAGetLastError () ;
 int WinPrint (char*,int ) ;
 int bind (int,void*,int) ;
 int closesocket (int) ;
 int htons (int ) ;
 int ioctlsocket (int,int ,int*) ;
 int memset (char*,int ,int) ;
 int socket (int ,int ,int ) ;

int WINS_OpenSocket( int port ){
 int newsocket;
 struct sockaddr_in address;
 u_long _true = 1;

 if ( ( newsocket = socket( PF_INET, SOCK_DGRAM, IPPROTO_UDP ) ) == SOCKET_ERROR ) {
  WinPrint( "WINS_OpenSocket: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  return -1;
 }

 if ( ioctlsocket( newsocket, FIONBIO, &_true ) == SOCKET_ERROR ) {
  WinPrint( "WINS_OpenSocket: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  closesocket( newsocket );
  return -1;
 }

 memset( (char *) &address, 0, sizeof( address ) );
 address.sin_family = AF_INET;
 address.sin_addr.s_addr = INADDR_ANY;
 address.sin_port = htons( (u_short)port );
 if ( bind( newsocket, (void *)&address, sizeof( address ) ) == -1 ) {
  WinPrint( "WINS_OpenSocket: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  closesocket( newsocket );
  return -1;
 }

 return newsocket;
}
