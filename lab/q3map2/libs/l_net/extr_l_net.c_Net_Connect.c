
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int socket; int addr; } ;
typedef TYPE_1__ socket_t ;
typedef int sockaddr_t ;
struct TYPE_8__ {int ip; } ;
typedef TYPE_2__ address_t ;


 TYPE_1__* Net_AllocSocket () ;
 int Net_FreeSocket (TYPE_1__*) ;
 int WINS_CloseSocket (int) ;
 int WINS_Connect (int,int *) ;
 int WINS_OpenReliableSocket (int) ;
 int WINS_StringToAddr (int ,int *) ;
 int WinPrint (char*) ;
 int memcpy (int *,int *,int) ;

socket_t *Net_Connect( address_t *address, int port ){
 int newsock;
 socket_t *sock;
 sockaddr_t sendaddr;


 WINS_StringToAddr( address->ip, &sendaddr );

 newsock = WINS_OpenReliableSocket( port );
 if ( newsock == -1 ) {
  return ((void*)0);
 }

 sock = Net_AllocSocket();
 if ( sock == ((void*)0) ) {
  WINS_CloseSocket( newsock );
  return ((void*)0);
 }
 sock->socket = newsock;


 if ( WINS_Connect( newsock, &sendaddr ) == -1 ) {
  Net_FreeSocket( sock );
  WINS_CloseSocket( newsock );
  WinPrint( "Net_Connect: error connecting\n" );
  return ((void*)0);
 }

 memcpy( &sock->addr, &sendaddr, sizeof( sockaddr_t ) );


 return sock;
}
