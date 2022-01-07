
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_s {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int byte ;


 int SOCKET_ERROR ;
 int WINS_ErrorMessage (int) ;
 int WSAECONNREFUSED ;
 int WSAEWOULDBLOCK ;
 int WSAGetLastError () ;
 int WinPrint (char*,int ) ;
 int recv (int,int *,int,int ) ;
 int recvfrom (int,int *,int,int ,struct sockaddr*,int*) ;

int WINS_Read( int socket, byte *buf, int len, struct sockaddr_s *addr ){
 int addrlen = sizeof( struct sockaddr_s );
 int ret, errno;

 if ( addr ) {
  ret = recvfrom( socket, buf, len, 0, (struct sockaddr *)addr, &addrlen );
  if ( ret == -1 ) {
   errno = WSAGetLastError();

   if ( errno == WSAEWOULDBLOCK || errno == WSAECONNREFUSED ) {
    return 0;
   }
  }
 }
 else
 {
  ret = recv( socket, buf, len, 0 );
  if ( ret == SOCKET_ERROR ) {
   errno = WSAGetLastError();

   if ( errno == WSAEWOULDBLOCK || errno == WSAECONNREFUSED ) {
    return 0;
   }
  }
 }
 if ( ret == SOCKET_ERROR ) {
  WinPrint( "WINS_Read: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
 }
 return ret;
}
