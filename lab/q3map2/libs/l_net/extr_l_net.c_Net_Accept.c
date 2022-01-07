
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int socket; int addr; } ;
typedef TYPE_1__ socket_t ;
typedef int sockaddr_t ;


 TYPE_1__* Net_AllocSocket () ;
 int WINS_Accept (int,int *) ;
 int WINS_CloseSocket (int) ;
 int memcpy (int *,int *,int) ;

socket_t *Net_Accept( socket_t *sock ){
 int newsocket;
 sockaddr_t sendaddr;
 socket_t *newsock;

 newsocket = WINS_Accept( sock->socket, &sendaddr );
 if ( newsocket == -1 ) {
  return ((void*)0);
 }

 newsock = Net_AllocSocket();
 if ( newsock == ((void*)0) ) {
  WINS_CloseSocket( newsocket );
  return ((void*)0);
 }
 newsock->socket = newsocket;
 memcpy( &newsock->addr, &sendaddr, sizeof( sockaddr_t ) );

 return newsock;
}
