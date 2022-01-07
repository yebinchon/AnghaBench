
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct sockaddr_s {int dummy; } ;
struct sockaddr {int dummy; } ;


 int FIONBIO ;
 int SOCKET_ERROR ;
 int WINS_ErrorMessage (int ) ;
 int WSAGetLastError () ;
 int WinPrint (char*,int ) ;
 int connect (int,struct sockaddr*,int) ;
 int ioctlsocket (int,int ,int*) ;

int WINS_Connect( int socket, struct sockaddr_s *addr ){
 int ret;
 u_long _true2 = 0xFFFFFFFF;

 ret = connect( socket, (struct sockaddr *)addr, sizeof( struct sockaddr_s ) );
 if ( ret == SOCKET_ERROR ) {
  WinPrint( "WINS_Connect: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  return -1;
 }
 if ( ioctlsocket( socket, FIONBIO, &_true2 ) == -1 ) {
  WinPrint( "WINS_Connect: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  return -1;
 }
 return 0;
}
