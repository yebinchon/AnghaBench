
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int team_t ;
typedef int spectatorState_t ;
typedef int s ;
typedef int qboolean ;
struct TYPE_5__ {int teamLeader; int spectatorState; int sessionTeam; int losses; int wins; int spectatorClient; int spectatorNum; } ;
struct TYPE_6__ {TYPE_1__ sess; } ;
typedef TYPE_2__ gclient_t ;
struct TYPE_7__ {TYPE_2__* clients; } ;


 int MAX_STRING_CHARS ;
 TYPE_3__ level ;
 int sscanf (char*,char*,int*,int *,int*,int *,int *,int *,int*) ;
 int trap_Cvar_VariableStringBuffer (char const*,char*,int) ;
 char* va (char*,int) ;

void G_ReadSessionData( gclient_t *client ) {
 char s[MAX_STRING_CHARS];
 const char *var;
 int teamLeader;
 int spectatorState;
 int sessionTeam;

 var = va( "session%i", (int)(client - level.clients) );
 trap_Cvar_VariableStringBuffer( var, s, sizeof(s) );

 sscanf( s, "%i %i %i %i %i %i %i",
  &sessionTeam,
  &client->sess.spectatorNum,
  &spectatorState,
  &client->sess.spectatorClient,
  &client->sess.wins,
  &client->sess.losses,
  &teamLeader
  );

 client->sess.sessionTeam = (team_t)sessionTeam;
 client->sess.spectatorState = (spectatorState_t)spectatorState;
 client->sess.teamLeader = (qboolean)teamLeader;
}
