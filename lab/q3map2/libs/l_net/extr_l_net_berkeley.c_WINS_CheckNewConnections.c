
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_PEEK ;
 int net_acceptsocket ;
 scalar_t__ recvfrom (int,char*,int,int ,int *,int *) ;

int WINS_CheckNewConnections( void ){
 char buf[4];

 if ( net_acceptsocket == -1 ) {
  return -1;
 }

 if ( recvfrom( net_acceptsocket, buf, 4, MSG_PEEK, ((void*)0), ((void*)0) ) > 0 ) {
  return net_acceptsocket;
 }
 return -1;
}
