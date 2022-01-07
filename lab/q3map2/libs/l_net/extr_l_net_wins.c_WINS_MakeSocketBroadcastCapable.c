
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;


 int SOL_SOCKET ;
 int SO_BROADCAST ;
 int net_broadcastsocket ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;

int WINS_MakeSocketBroadcastCapable( int socket ){
 int i = 1;


 if ( setsockopt( socket, SOL_SOCKET, SO_BROADCAST, (char *)&i, sizeof( i ) ) < 0 ) {
  return -1;
 }
 net_broadcastsocket = socket;

 return 0;
}
