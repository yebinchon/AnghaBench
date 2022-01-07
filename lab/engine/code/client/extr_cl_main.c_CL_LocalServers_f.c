
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int to ;
typedef int qboolean ;
struct TYPE_5__ {int type; int port; int visible; } ;
typedef TYPE_1__ netadr_t ;
struct TYPE_6__ {TYPE_1__* localServers; int pingUpdateSource; scalar_t__ numlocalservers; } ;


 int AS_LOCAL ;
 int BigShort (short) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int Com_Printf (char*) ;
 int MAX_OTHER_SERVERS ;
 int NA_BROADCAST ;
 int NA_MULTICAST6 ;
 int NET_SendPacket (int ,int ,char*,TYPE_1__) ;
 int NS_CLIENT ;
 int NUM_SERVER_PORTS ;
 scalar_t__ PORT_SERVER ;
 TYPE_2__ cls ;
 int strlen (char*) ;

void CL_LocalServers_f( void ) {
 char *message;
 int i, j;
 netadr_t to;

 Com_Printf( "Scanning for servers on the local network...\n");


 cls.numlocalservers = 0;
 cls.pingUpdateSource = AS_LOCAL;

 for (i = 0; i < MAX_OTHER_SERVERS; i++) {
  qboolean b = cls.localServers[i].visible;
  Com_Memset(&cls.localServers[i], 0, sizeof(cls.localServers[i]));
  cls.localServers[i].visible = b;
 }
 Com_Memset( &to, 0, sizeof( to ) );




 message = "\377\377\377\377getinfo xxx";


 for ( i = 0 ; i < 2 ; i++ ) {



  for ( j = 0 ; j < NUM_SERVER_PORTS ; j++ ) {
   to.port = BigShort( (short)(PORT_SERVER + j) );

   to.type = NA_BROADCAST;
   NET_SendPacket( NS_CLIENT, strlen( message ), message, to );
   to.type = NA_MULTICAST6;
   NET_SendPacket( NS_CLIENT, strlen( message ), message, to );
  }
 }
}
