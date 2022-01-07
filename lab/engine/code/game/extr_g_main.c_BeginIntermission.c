
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ health; int inuse; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int maxclients; scalar_t__ time; scalar_t__ intermissiontime; } ;


 int AdjustTournamentScores () ;
 int ClientRespawn (TYPE_1__*) ;
 scalar_t__ GT_SINGLE_PLAYER ;
 scalar_t__ GT_TOURNAMENT ;
 int MoveClientToIntermission (TYPE_1__*) ;
 int SendScoreboardMessageToAllClients () ;
 int SpawnModelsOnVictoryPads () ;
 int UpdateTournamentInfo () ;
 TYPE_1__* g_entities ;
 TYPE_4__ g_gametype ;
 TYPE_3__ g_singlePlayer ;
 TYPE_2__ level ;
 int trap_Cvar_Set (char*,char*) ;

void BeginIntermission( void ) {
 int i;
 gentity_t *client;

 if ( level.intermissiontime ) {
  return;
 }


 if ( g_gametype.integer == GT_TOURNAMENT ) {
  AdjustTournamentScores();
 }

 level.intermissiontime = level.time;

 for (i=0 ; i< level.maxclients ; i++) {
  client = g_entities + i;
  if (!client->inuse)
   continue;

  if (client->health <= 0) {
   ClientRespawn(client);
  }
  MoveClientToIntermission( client );
 }







 if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
  UpdateTournamentInfo();
  SpawnModelsOnVictoryPads();
 }


 SendScoreboardMessageToAllClients();

}
