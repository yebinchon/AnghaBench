
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SOCKET_ERROR ;
 int WINS_ErrorMessage (int ) ;
 int WSAGetLastError () ;
 int WinPrint (char*,int ) ;
 scalar_t__ closesocket (int) ;

int WINS_CloseSocket( int socket ){






 if ( closesocket( socket ) == SOCKET_ERROR ) {
  WinPrint( "WINS_CloseSocket: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  return SOCKET_ERROR;
 }
 return 0;
}
