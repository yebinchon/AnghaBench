
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int FIONBIO ;
 scalar_t__ SOCKET_ERROR ;
 int SOMAXCONN ;
 int WINS_ErrorMessage (int ) ;
 int WSAGetLastError () ;
 int WinPrint (char*,int ) ;
 int ioctlsocket (int,int ,int*) ;
 scalar_t__ listen (int,int ) ;

int WINS_Listen( int socket ){
 u_long _true = 1;

 if ( ioctlsocket( socket, FIONBIO, &_true ) == -1 ) {
  WinPrint( "WINS_Listen: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  return -1;
 }
 if ( listen( socket, SOMAXCONN ) == SOCKET_ERROR ) {
  WinPrint( "WINS_Listen: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  return -1;
 }
 return 0;
}
