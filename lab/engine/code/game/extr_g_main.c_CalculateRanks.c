
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int* persistant; } ;
struct TYPE_11__ {scalar_t__ sessionTeam; } ;
struct TYPE_9__ {scalar_t__ connected; } ;
struct TYPE_13__ {TYPE_4__ ps; TYPE_3__ sess; TYPE_1__ pers; } ;
typedef TYPE_5__ gclient_t ;
struct TYPE_10__ {int svFlags; } ;
struct TYPE_16__ {TYPE_2__ r; } ;
struct TYPE_15__ {scalar_t__ integer; } ;
struct TYPE_14__ {int follow1; int follow2; size_t numConnectedClients; int numPlayingClients; int maxclients; int* sortedClients; scalar_t__* teamScores; scalar_t__ intermissiontime; TYPE_5__* clients; scalar_t__* numteamVotingClients; scalar_t__ numVotingClients; scalar_t__ numNonSpectatorClients; } ;


 int ARRAY_LEN (scalar_t__*) ;
 scalar_t__ CON_CONNECTED ;
 scalar_t__ CON_DISCONNECTED ;
 int CS_SCORES1 ;
 int CS_SCORES2 ;
 int CheckExitRules () ;
 scalar_t__ GT_SINGLE_PLAYER ;
 scalar_t__ GT_TEAM ;
 size_t PERS_RANK ;
 size_t PERS_SCORE ;
 int RANK_TIED_FLAG ;
 scalar_t__ SCORE_NOT_PRESENT ;
 int SVF_BOT ;
 int SendScoreboardMessageToAllClients () ;
 int SortRanks ;
 size_t TEAM_BLUE ;
 size_t TEAM_RED ;
 scalar_t__ TEAM_SPECTATOR ;
 TYPE_8__* g_entities ;
 TYPE_7__ g_gametype ;
 TYPE_6__ level ;
 int qsort (int*,size_t,int,int ) ;
 int trap_SetConfigstring (int ,int ) ;
 int va (char*,scalar_t__) ;

void CalculateRanks( void ) {
 int i;
 int rank;
 int score;
 int newScore;
 gclient_t *cl;

 level.follow1 = -1;
 level.follow2 = -1;
 level.numConnectedClients = 0;
 level.numNonSpectatorClients = 0;
 level.numPlayingClients = 0;
 level.numVotingClients = 0;

 for (i = 0; i < ARRAY_LEN(level.numteamVotingClients); i++)
  level.numteamVotingClients[i] = 0;

 for ( i = 0 ; i < level.maxclients ; i++ ) {
  if ( level.clients[i].pers.connected != CON_DISCONNECTED ) {
   level.sortedClients[level.numConnectedClients] = i;
   level.numConnectedClients++;

   if ( level.clients[i].sess.sessionTeam != TEAM_SPECTATOR ) {
    level.numNonSpectatorClients++;


    if ( level.clients[i].pers.connected == CON_CONNECTED ) {
     level.numPlayingClients++;
     if ( !(g_entities[i].r.svFlags & SVF_BOT) ) {
      level.numVotingClients++;
      if ( level.clients[i].sess.sessionTeam == TEAM_RED )
       level.numteamVotingClients[0]++;
      else if ( level.clients[i].sess.sessionTeam == TEAM_BLUE )
       level.numteamVotingClients[1]++;
     }
     if ( level.follow1 == -1 ) {
      level.follow1 = i;
     } else if ( level.follow2 == -1 ) {
      level.follow2 = i;
     }
    }
   }
  }
 }

 qsort( level.sortedClients, level.numConnectedClients,
  sizeof(level.sortedClients[0]), SortRanks );


 if ( g_gametype.integer >= GT_TEAM ) {

  for ( i = 0; i < level.numConnectedClients; i++ ) {
   cl = &level.clients[ level.sortedClients[i] ];
   if ( level.teamScores[TEAM_RED] == level.teamScores[TEAM_BLUE] ) {
    cl->ps.persistant[PERS_RANK] = 2;
   } else if ( level.teamScores[TEAM_RED] > level.teamScores[TEAM_BLUE] ) {
    cl->ps.persistant[PERS_RANK] = 0;
   } else {
    cl->ps.persistant[PERS_RANK] = 1;
   }
  }
 } else {
  rank = -1;
  score = 0;
  for ( i = 0; i < level.numPlayingClients; i++ ) {
   cl = &level.clients[ level.sortedClients[i] ];
   newScore = cl->ps.persistant[PERS_SCORE];
   if ( i == 0 || newScore != score ) {
    rank = i;

    level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank;
   } else {

    level.clients[ level.sortedClients[i-1] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
    level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
   }
   score = newScore;
   if ( g_gametype.integer == GT_SINGLE_PLAYER && level.numPlayingClients == 1 ) {
    level.clients[ level.sortedClients[i] ].ps.persistant[PERS_RANK] = rank | RANK_TIED_FLAG;
   }
  }
 }


 if ( g_gametype.integer >= GT_TEAM ) {
  trap_SetConfigstring( CS_SCORES1, va("%i", level.teamScores[TEAM_RED] ) );
  trap_SetConfigstring( CS_SCORES2, va("%i", level.teamScores[TEAM_BLUE] ) );
 } else {
  if ( level.numConnectedClients == 0 ) {
   trap_SetConfigstring( CS_SCORES1, va("%i", SCORE_NOT_PRESENT) );
   trap_SetConfigstring( CS_SCORES2, va("%i", SCORE_NOT_PRESENT) );
  } else if ( level.numConnectedClients == 1 ) {
   trap_SetConfigstring( CS_SCORES1, va("%i", level.clients[ level.sortedClients[0] ].ps.persistant[PERS_SCORE] ) );
   trap_SetConfigstring( CS_SCORES2, va("%i", SCORE_NOT_PRESENT) );
  } else {
   trap_SetConfigstring( CS_SCORES1, va("%i", level.clients[ level.sortedClients[0] ].ps.persistant[PERS_SCORE] ) );
   trap_SetConfigstring( CS_SCORES2, va("%i", level.clients[ level.sortedClients[1] ].ps.persistant[PERS_SCORE] ) );
  }
 }


 CheckExitRules();


 if ( level.intermissiontime ) {
  SendScoreboardMessageToAllClients();
 }
}
