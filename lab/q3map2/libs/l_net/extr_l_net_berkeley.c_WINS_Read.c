
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_s {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int byte ;


 scalar_t__ EAGAIN ;
 scalar_t__ ENOTCONN ;
 int SOCKET_ERROR ;
 int WINS_ErrorMessage (int ) ;
 int WSAGetLastError () ;
 int WinPrint (char*,int ) ;
 scalar_t__ errno ;
 int recv (int,int *,int,int ) ;
 int recvfrom (int,int *,int,int ,struct sockaddr*,int*) ;

int WINS_Read( int socket, byte *buf, int len, struct sockaddr_s *addr ){
 socklen_t addrlen = sizeof( struct sockaddr_s );
 int ret;

 if ( addr ) {
  ret = recvfrom( socket, buf, len, 0, (struct sockaddr *)addr, &addrlen );
  if ( ret == -1 ) {


   if ( errno == EAGAIN || errno == ENOTCONN ) {
    return 0;
   }
  }
 }
 else
 {
  ret = recv( socket, buf, len, 0 );



  if ( ret == 0 ) {
   return -1;
  }
  if ( ret == SOCKET_ERROR ) {


   if ( errno == EAGAIN || errno == ENOTCONN ) {
    return 0;
   }
  }
 }
 if ( ret == SOCKET_ERROR ) {
  WinPrint( "WINS_Read: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
 }
 return ret;
}
