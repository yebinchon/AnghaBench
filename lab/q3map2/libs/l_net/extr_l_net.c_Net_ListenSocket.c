
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int socket; int addr; } ;
typedef TYPE_1__ socket_t ;


 TYPE_1__* Net_AllocSocket () ;
 int WINS_AddrToString (int *) ;
 int WINS_CloseSocket (int) ;
 int WINS_GetSocketAddr (int,int *) ;
 int WINS_Listen (int) ;
 int WINS_OpenReliableSocket (int) ;
 int WinPrint (char*,int ) ;

socket_t *Net_ListenSocket( int port ){
 int newsock;
 socket_t *sock;

 newsock = WINS_OpenReliableSocket( port );
 if ( newsock == -1 ) {
  return ((void*)0);
 }

 if ( WINS_Listen( newsock ) == -1 ) {
  WINS_CloseSocket( newsock );
  return ((void*)0);
 }
 sock = Net_AllocSocket();
 if ( sock == ((void*)0) ) {
  WINS_CloseSocket( newsock );
  return ((void*)0);
 }
 sock->socket = newsock;
 WINS_GetSocketAddr( newsock, &sock->addr );
 WinPrint( "listen socket opened at %s\n", WINS_AddrToString( &sock->addr ) );

 return sock;
}
