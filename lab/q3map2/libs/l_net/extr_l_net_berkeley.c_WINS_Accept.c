
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_s {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int qboolean ;


 scalar_t__ EAGAIN ;
 int INVALID_SOCKET ;
 int IPPROTO_TCP ;
 scalar_t__ SOCKET_ERROR ;
 int TCP_NODELAY ;
 int WINS_ErrorMessage (int ) ;
 int WSAGetLastError () ;
 int WinPrint (char*,...) ;
 int accept (int,struct sockaddr*,int*) ;
 scalar_t__ errno ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;

int WINS_Accept( int socket, struct sockaddr_s *addr ){
 socklen_t addrlen = sizeof( struct sockaddr_s );
 int newsocket;
 qboolean _true = 1;

 newsocket = accept( socket, (struct sockaddr *)addr, &addrlen );
 if ( newsocket == INVALID_SOCKET ) {
  if ( errno == EAGAIN ) {
   return -1;
  }
  WinPrint( "WINS_Accept: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  return -1;
 }

 if ( setsockopt( newsocket, IPPROTO_TCP, TCP_NODELAY, (void *) &_true, sizeof( int ) ) == SOCKET_ERROR ) {
  WinPrint( "WINS_Accept: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
  WinPrint( "setsockopt error\n" );
 }
 return newsocket;
}
