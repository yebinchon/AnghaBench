
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_s {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int BOOL ;


 int INVALID_SOCKET ;
 int IPPROTO_TCP ;
 scalar_t__ SOCKET_ERROR ;
 int TCP_NODELAY ;
 int WINS_ErrorMessage (scalar_t__) ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 int WinPrint (char*,...) ;
 int accept (int,struct sockaddr*,int*) ;
 scalar_t__ setsockopt (int,int ,int ,void*,int) ;

int WINS_Accept( int socket, struct sockaddr_s *addr ){
 int addrlen = sizeof( struct sockaddr_s );
 int newsocket;
 BOOL _true = 1;

 newsocket = accept( socket, (struct sockaddr *)addr, &addrlen );
 if ( newsocket == INVALID_SOCKET ) {
  if ( WSAGetLastError() == WSAEWOULDBLOCK ) {
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
