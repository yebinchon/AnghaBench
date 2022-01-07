
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int string ;
struct TYPE_12__ {int powerups; } ;
struct TYPE_10__ {int svFlags; } ;
struct TYPE_14__ {TYPE_3__ s; TYPE_1__ r; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_13__ {int ping; scalar_t__* persistant; } ;
struct TYPE_11__ {scalar_t__ connected; int enterTime; } ;
struct TYPE_15__ {int accuracy_shots; int accuracy_hits; TYPE_4__ ps; TYPE_2__ pers; } ;
typedef TYPE_6__ gclient_t ;
typedef int entry ;
struct TYPE_16__ {int numConnectedClients; size_t* sortedClients; int time; int * teamScores; TYPE_6__* clients; } ;


 scalar_t__ CON_CONNECTING ;
 int Com_sprintf (char*,int,char*,size_t,scalar_t__,int,int,int,int ,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,scalar_t__) ;
 size_t PERS_ASSIST_COUNT ;
 size_t PERS_CAPTURES ;
 size_t PERS_DEFEND_COUNT ;
 size_t PERS_EXCELLENT_COUNT ;
 size_t PERS_GAUNTLET_FRAG_COUNT ;
 size_t PERS_IMPRESSIVE_COUNT ;
 size_t PERS_KILLED ;
 size_t PERS_RANK ;
 size_t PERS_SCORE ;
 int SVF_BOT ;
 size_t TEAM_BLUE ;
 size_t TEAM_RED ;
 TYPE_5__* g_entities ;
 TYPE_7__ level ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int trap_SendServerCommand (int,int ) ;
 int va (char*,int,int ,int ,char*) ;

void DeathmatchScoreboardMessage( gentity_t *ent ) {
 char entry[1024];
 char string[1000];
 int stringlength;
 int i, j;
 gclient_t *cl;
 int numSorted, scoreFlags, accuracy, perfect;


 if ( ent->r.svFlags & SVF_BOT ) {
  return;
 }


 string[0] = 0;
 stringlength = 0;
 scoreFlags = 0;

 numSorted = level.numConnectedClients;

 for (i=0 ; i < numSorted ; i++) {
  int ping;

  cl = &level.clients[level.sortedClients[i]];

  if ( cl->pers.connected == CON_CONNECTING ) {
   ping = -1;
  } else {
   ping = cl->ps.ping < 999 ? cl->ps.ping : 999;
  }

  if( cl->accuracy_shots ) {
   accuracy = cl->accuracy_hits * 100 / cl->accuracy_shots;
  }
  else {
   accuracy = 0;
  }
  perfect = ( cl->ps.persistant[PERS_RANK] == 0 && cl->ps.persistant[PERS_KILLED] == 0 ) ? 1 : 0;

  Com_sprintf (entry, sizeof(entry),
   " %i %i %i %i %i %i %i %i %i %i %i %i %i %i", level.sortedClients[i],
   cl->ps.persistant[PERS_SCORE], ping, (level.time - cl->pers.enterTime)/60000,
   scoreFlags, g_entities[level.sortedClients[i]].s.powerups, accuracy,
   cl->ps.persistant[PERS_IMPRESSIVE_COUNT],
   cl->ps.persistant[PERS_EXCELLENT_COUNT],
   cl->ps.persistant[PERS_GAUNTLET_FRAG_COUNT],
   cl->ps.persistant[PERS_DEFEND_COUNT],
   cl->ps.persistant[PERS_ASSIST_COUNT],
   perfect,
   cl->ps.persistant[PERS_CAPTURES]);
  j = strlen(entry);
  if (stringlength + j >= sizeof(string))
   break;
  strcpy (string + stringlength, entry);
  stringlength += j;
 }

 trap_SendServerCommand( ent-g_entities, va("scores %i %i %i%s", i,
  level.teamScores[TEAM_RED], level.teamScores[TEAM_BLUE],
  string ) );
}
