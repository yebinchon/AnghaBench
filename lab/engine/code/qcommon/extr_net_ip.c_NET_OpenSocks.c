
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int s_addr; } ;
struct sockaddr_in {short sin_port; int sin_zero; TYPE_1__ sin_addr; scalar_t__ sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__ h_addrtype; scalar_t__* h_addr_list; } ;
typedef void* qboolean ;
typedef int address ;
struct TYPE_10__ {scalar_t__* string; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int string; } ;
struct TYPE_7__ {scalar_t__* string; } ;


 scalar_t__ AF_INET ;
 int Com_Printf (char*,...) ;
 int INADDR_ANY ;
 int INVALID_SOCKET ;
 int IPPROTO_TCP ;
 unsigned char NET_ErrorString () ;
 int SOCKET_ERROR ;
 int SOCK_STREAM ;
 int connect (int ,struct sockaddr*,int) ;
 struct hostent* gethostbyname (int ) ;
 void* htons (short) ;
 int memcpy (unsigned char*,scalar_t__*,int) ;
 int memset (int ,int ,int) ;
 TYPE_5__* net_socksPassword ;
 TYPE_4__* net_socksPort ;
 TYPE_3__* net_socksServer ;
 TYPE_2__* net_socksUsername ;
 void* qfalse ;
 void* qtrue ;
 int recv (int ,void*,int,int ) ;
 int send (int ,void*,int,int ) ;
 int socket (scalar_t__,int ,int ) ;
 int socksRelayAddr ;
 int socks_socket ;
 int strlen (scalar_t__*) ;
 void* usingSocks ;

void NET_OpenSocks( int port ) {
 struct sockaddr_in address;
 struct hostent *h;
 int len;
 qboolean rfc1929;
 unsigned char buf[64];

 usingSocks = qfalse;

 Com_Printf( "Opening connection to SOCKS server.\n" );

 if ( ( socks_socket = socket( AF_INET, SOCK_STREAM, IPPROTO_TCP ) ) == INVALID_SOCKET ) {
  Com_Printf( "WARNING: NET_OpenSocks: socket: %s\n", NET_ErrorString() );
  return;
 }

 h = gethostbyname( net_socksServer->string );
 if ( h == ((void*)0) ) {
  Com_Printf( "WARNING: NET_OpenSocks: gethostbyname: %s\n", NET_ErrorString() );
  return;
 }
 if ( h->h_addrtype != AF_INET ) {
  Com_Printf( "WARNING: NET_OpenSocks: gethostbyname: address type was not AF_INET\n" );
  return;
 }
 address.sin_family = AF_INET;
 address.sin_addr.s_addr = *(int *)h->h_addr_list[0];
 address.sin_port = htons( (short)net_socksPort->integer );

 if ( connect( socks_socket, (struct sockaddr *)&address, sizeof( address ) ) == SOCKET_ERROR ) {
  Com_Printf( "NET_OpenSocks: connect: %s\n", NET_ErrorString() );
  return;
 }


 if ( *net_socksUsername->string || *net_socksPassword->string ) {
  rfc1929 = qtrue;
 }
 else {
  rfc1929 = qfalse;
 }

 buf[0] = 5;

 if ( rfc1929 ) {
  buf[1] = 2;
  len = 4;
 }
 else {
  buf[1] = 1;
  len = 3;
 }
 buf[2] = 0;
 if ( rfc1929 ) {
  buf[2] = 2;
 }
 if ( send( socks_socket, (void *)buf, len, 0 ) == SOCKET_ERROR ) {
  Com_Printf( "NET_OpenSocks: send: %s\n", NET_ErrorString() );
  return;
 }


 len = recv( socks_socket, (void *)buf, 64, 0 );
 if ( len == SOCKET_ERROR ) {
  Com_Printf( "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
  return;
 }
 if ( len != 2 || buf[0] != 5 ) {
  Com_Printf( "NET_OpenSocks: bad response\n" );
  return;
 }
 switch( buf[1] ) {
 case 0:
  break;
 case 2:
  break;
 default:
  Com_Printf( "NET_OpenSocks: request denied\n" );
  return;
 }


 if ( buf[1] == 2 ) {
  int ulen;
  int plen;


  ulen = strlen( net_socksUsername->string );
  plen = strlen( net_socksPassword->string );

  buf[0] = 1;
  buf[1] = ulen;
  if ( ulen ) {
   memcpy( &buf[2], net_socksUsername->string, ulen );
  }
  buf[2 + ulen] = plen;
  if ( plen ) {
   memcpy( &buf[3 + ulen], net_socksPassword->string, plen );
  }


  if ( send( socks_socket, (void *)buf, 3 + ulen + plen, 0 ) == SOCKET_ERROR ) {
   Com_Printf( "NET_OpenSocks: send: %s\n", NET_ErrorString() );
   return;
  }


  len = recv( socks_socket, (void *)buf, 64, 0 );
  if ( len == SOCKET_ERROR ) {
   Com_Printf( "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
   return;
  }
  if ( len != 2 || buf[0] != 1 ) {
   Com_Printf( "NET_OpenSocks: bad response\n" );
   return;
  }
  if ( buf[1] != 0 ) {
   Com_Printf( "NET_OpenSocks: authentication failed\n" );
   return;
  }
 }


 buf[0] = 5;
 buf[1] = 3;
 buf[2] = 0;
 buf[3] = 1;
 *(int *)&buf[4] = INADDR_ANY;
 *(short *)&buf[8] = htons( (short)port );
 if ( send( socks_socket, (void *)buf, 10, 0 ) == SOCKET_ERROR ) {
  Com_Printf( "NET_OpenSocks: send: %s\n", NET_ErrorString() );
  return;
 }


 len = recv( socks_socket, (void *)buf, 64, 0 );
 if( len == SOCKET_ERROR ) {
  Com_Printf( "NET_OpenSocks: recv: %s\n", NET_ErrorString() );
  return;
 }
 if( len < 2 || buf[0] != 5 ) {
  Com_Printf( "NET_OpenSocks: bad response\n" );
  return;
 }

 if( buf[1] != 0 ) {
  Com_Printf( "NET_OpenSocks: request denied: %i\n", buf[1] );
  return;
 }
 if( buf[3] != 1 ) {
  Com_Printf( "NET_OpenSocks: relay address is not IPV4: %i\n", buf[3] );
  return;
 }
 ((struct sockaddr_in *)&socksRelayAddr)->sin_family = AF_INET;
 ((struct sockaddr_in *)&socksRelayAddr)->sin_addr.s_addr = *(int *)&buf[4];
 ((struct sockaddr_in *)&socksRelayAddr)->sin_port = *(short *)&buf[8];
 memset( ((struct sockaddr_in *)&socksRelayAddr)->sin_zero, 0, 8 );

 usingSocks = qtrue;
}
