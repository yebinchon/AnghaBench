
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {int time; scalar_t__ intermissiontime; } ;
struct TYPE_6__ {int integer; } ;


 scalar_t__ GT_FFA ;
 scalar_t__ GT_TEAM ;
 scalar_t__ GT_TOURNAMENT ;
 int G_AddRandomBot (int) ;
 int G_CountBotPlayers (int) ;
 int G_CountHumanPlayers (int) ;
 int G_RemoveRandomBot (int) ;
 int TEAM_BLUE ;
 int TEAM_FREE ;
 int TEAM_RED ;
 int TEAM_SPECTATOR ;
 TYPE_1__ bot_minplayers ;
 TYPE_4__ g_gametype ;
 TYPE_3__ g_maxclients ;
 TYPE_2__ level ;
 int trap_Cvar_Update (TYPE_1__*) ;

void G_CheckMinimumPlayers( void ) {
 int minplayers;
 int humanplayers, botplayers;
 static int checkminimumplayers_time;

 if (level.intermissiontime) return;

 if (checkminimumplayers_time > level.time - 10000) {
  return;
 }
 checkminimumplayers_time = level.time;
 trap_Cvar_Update(&bot_minplayers);
 minplayers = bot_minplayers.integer;
 if (minplayers <= 0) return;

 if (g_gametype.integer >= GT_TEAM) {
  if (minplayers >= g_maxclients.integer / 2) {
   minplayers = (g_maxclients.integer / 2) -1;
  }

  humanplayers = G_CountHumanPlayers( TEAM_RED );
  botplayers = G_CountBotPlayers( TEAM_RED );

  if (humanplayers + botplayers < minplayers) {
   G_AddRandomBot( TEAM_RED );
  } else if (humanplayers + botplayers > minplayers && botplayers) {
   G_RemoveRandomBot( TEAM_RED );
  }

  humanplayers = G_CountHumanPlayers( TEAM_BLUE );
  botplayers = G_CountBotPlayers( TEAM_BLUE );

  if (humanplayers + botplayers < minplayers) {
   G_AddRandomBot( TEAM_BLUE );
  } else if (humanplayers + botplayers > minplayers && botplayers) {
   G_RemoveRandomBot( TEAM_BLUE );
  }
 }
 else if (g_gametype.integer == GT_TOURNAMENT ) {
  if (minplayers >= g_maxclients.integer) {
   minplayers = g_maxclients.integer-1;
  }
  humanplayers = G_CountHumanPlayers( -1 );
  botplayers = G_CountBotPlayers( -1 );

  if (humanplayers + botplayers < minplayers) {
   G_AddRandomBot( TEAM_FREE );
  } else if (humanplayers + botplayers > minplayers && botplayers) {

   if (!G_RemoveRandomBot( TEAM_SPECTATOR )) {

    G_RemoveRandomBot( -1 );
   }
  }
 }
 else if (g_gametype.integer == GT_FFA) {
  if (minplayers >= g_maxclients.integer) {
   minplayers = g_maxclients.integer-1;
  }
  humanplayers = G_CountHumanPlayers( TEAM_FREE );
  botplayers = G_CountBotPlayers( TEAM_FREE );

  if (humanplayers + botplayers < minplayers) {
   G_AddRandomBot( TEAM_FREE );
  } else if (humanplayers + botplayers > minplayers && botplayers) {
   G_RemoveRandomBot( TEAM_FREE );
  }
 }
}
