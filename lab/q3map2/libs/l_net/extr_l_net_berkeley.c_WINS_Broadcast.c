
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int WINS_MakeSocketBroadcastCapable (int) ;
 int WINS_Write (int,int *,int,int *) ;
 int WinError (char*) ;
 int WinPrint (char*) ;
 int broadcastaddr ;
 int net_broadcastsocket ;

int WINS_Broadcast( int socket, byte *buf, int len ){
 int ret;

 if ( socket != net_broadcastsocket ) {
  if ( net_broadcastsocket != 0 ) {
   WinError( "Attempted to use multiple broadcasts sockets\n" );
  }
  ret = WINS_MakeSocketBroadcastCapable( socket );
  if ( ret == -1 ) {
   WinPrint( "Unable to make socket broadcast capable\n" );
   return ret;
  }
 }

 return WINS_Write( socket, buf, len, &broadcastaddr );
}
