
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ connected; int netname; } ;
struct TYPE_6__ {TYPE_1__ pers; } ;
typedef TYPE_2__ gclient_t ;
struct TYPE_7__ {int maxclients; TYPE_2__* clients; } ;


 scalar_t__ CON_DISCONNECTED ;
 int Com_Printf (char*,int) ;
 int G_Printf (char*,...) ;
 int Q_stricmp (int ,char const*) ;
 int atoi (char const*) ;
 TYPE_3__ level ;

gclient_t *ClientForString( const char *s ) {
 gclient_t *cl;
 int i;
 int idnum;


 if ( s[0] >= '0' && s[0] <= '9' ) {
  idnum = atoi( s );
  if ( idnum < 0 || idnum >= level.maxclients ) {
   Com_Printf( "Bad client slot: %i\n", idnum );
   return ((void*)0);
  }

  cl = &level.clients[idnum];
  if ( cl->pers.connected == CON_DISCONNECTED ) {
   G_Printf( "Client %i is not connected\n", idnum );
   return ((void*)0);
  }
  return cl;
 }


 for ( i=0 ; i < level.maxclients ; i++ ) {
  cl = &level.clients[i];
  if ( cl->pers.connected == CON_DISCONNECTED ) {
   continue;
  }
  if ( !Q_stricmp( cl->pers.netname, s ) ) {
   return cl;
  }
 }

 G_Printf( "User %s is not on the server\n", s );

 return ((void*)0);
}
