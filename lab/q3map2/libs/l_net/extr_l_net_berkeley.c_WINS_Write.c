
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_s {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int byte ;


 scalar_t__ EAGAIN ;
 int SOCKET_ERROR ;
 int WINS_ErrorMessage (scalar_t__) ;
 scalar_t__ WSAGetLastError () ;
 int WinPrint (char*,int ) ;
 int qfalse ;
 int send (int,int *,int,int ) ;
 int sendto (int,int *,int,int ,struct sockaddr*,int) ;

int WINS_Write( int socket, byte *buf, int len, struct sockaddr_s *addr ){
 int ret = 0, written;

 if ( addr ) {
  written = 0;
  while ( written < len )
  {
   ret = sendto( socket, &buf[written], len - written, 0, (struct sockaddr *)addr, sizeof( struct sockaddr_s ) );
   if ( ret == SOCKET_ERROR ) {
    if ( WSAGetLastError() != EAGAIN ) {
     return qfalse;
    }


   }
   else
   {
    written += ret;
   }
  }
 }
 else
 {
  written = 0;
  while ( written < len )
  {
   ret = send( socket, buf, len, 0 );
   if ( ret == SOCKET_ERROR ) {
    if ( WSAGetLastError() != EAGAIN ) {
     return qfalse;
    }


   }
   else
   {
    written += ret;
   }
  }
 }
 if ( ret == SOCKET_ERROR ) {
  WinPrint( "WINS_Write: %s\n", WINS_ErrorMessage( WSAGetLastError() ) );
 }
 return ( ret == len );
}
