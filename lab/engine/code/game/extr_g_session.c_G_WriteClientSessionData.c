
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int teamLeader; int losses; int wins; int spectatorClient; int spectatorState; int spectatorNum; int sessionTeam; } ;
struct TYPE_6__ {TYPE_1__ sess; } ;
typedef TYPE_2__ gclient_t ;
struct TYPE_7__ {TYPE_2__* clients; } ;


 TYPE_3__ level ;
 int trap_Cvar_Set (char const*,char const*) ;
 char* va (char*,int,...) ;

void G_WriteClientSessionData( gclient_t *client ) {
 const char *s;
 const char *var;

 s = va("%i %i %i %i %i %i %i",
  client->sess.sessionTeam,
  client->sess.spectatorNum,
  client->sess.spectatorState,
  client->sess.spectatorClient,
  client->sess.wins,
  client->sess.losses,
  client->sess.teamLeader
  );

 var = va( "session%i", (int)(client - level.clients) );

 trap_Cvar_Set( var, s );
}
