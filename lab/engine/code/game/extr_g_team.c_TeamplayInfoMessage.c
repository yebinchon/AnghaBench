
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int string ;
struct TYPE_17__ {int powerups; } ;
struct TYPE_18__ {TYPE_6__ s; TYPE_5__* client; scalar_t__ inuse; } ;
typedef TYPE_7__ gentity_t ;
typedef int entry ;
typedef int clients ;
struct TYPE_20__ {int integer; } ;
struct TYPE_19__ {int* sortedClients; } ;
struct TYPE_15__ {int* stats; int weapon; } ;
struct TYPE_13__ {int location; } ;
struct TYPE_14__ {TYPE_2__ teamState; int teamInfo; } ;
struct TYPE_12__ {int sessionTeam; scalar_t__ spectatorState; size_t spectatorClient; } ;
struct TYPE_16__ {TYPE_4__ ps; TYPE_3__ pers; TYPE_1__ sess; } ;


 int Com_sprintf (char*,int,char*,int,int ,int,int,int ,int ) ;
 scalar_t__ SPECTATOR_FOLLOW ;
 size_t STAT_ARMOR ;
 size_t STAT_HEALTH ;
 int SortClients ;
 int TEAM_BLUE ;
 int TEAM_MAXOVERLAY ;
 int TEAM_RED ;
 int TEAM_SPECTATOR ;
 TYPE_7__* g_entities ;
 TYPE_9__ g_maxclients ;
 TYPE_8__ level ;
 int qsort (int*,int,int,int ) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int trap_SendServerCommand (int,int ) ;
 int va (char*,int,char*) ;

void TeamplayInfoMessage( gentity_t *ent ) {
 char entry[1024];
 char string[8192];
 int stringlength;
 int i, j;
 gentity_t *player;
 int cnt;
 int h, a;
 int clients[TEAM_MAXOVERLAY];
 int team;

 if ( ! ent->client->pers.teamInfo )
  return;


 if (ent->client->sess.sessionTeam == TEAM_SPECTATOR) {
  if ( ent->client->sess.spectatorState != SPECTATOR_FOLLOW
   || ent->client->sess.spectatorClient < 0 ) {
   return;
  }
  team = g_entities[ ent->client->sess.spectatorClient ].client->sess.sessionTeam;
 } else {
  team = ent->client->sess.sessionTeam;
 }

 if (team != TEAM_RED && team != TEAM_BLUE) {
  return;
 }




 for (i = 0, cnt = 0; i < g_maxclients.integer && cnt < TEAM_MAXOVERLAY; i++) {
  player = g_entities + level.sortedClients[i];
  if (player->inuse && player->client->sess.sessionTeam == team ) {
   clients[cnt++] = level.sortedClients[i];
  }
 }


 qsort( clients, cnt, sizeof( clients[0] ), SortClients );


 string[0] = 0;
 stringlength = 0;

 for (i = 0, cnt = 0; i < g_maxclients.integer && cnt < TEAM_MAXOVERLAY; i++) {
  player = g_entities + i;
  if (player->inuse && player->client->sess.sessionTeam == team ) {

   h = player->client->ps.stats[STAT_HEALTH];
   a = player->client->ps.stats[STAT_ARMOR];
   if (h < 0) h = 0;
   if (a < 0) a = 0;

   Com_sprintf (entry, sizeof(entry),
    " %i %i %i %i %i %i",

    i, player->client->pers.teamState.location, h, a,
    player->client->ps.weapon, player->s.powerups);
   j = strlen(entry);
   if (stringlength + j >= sizeof(string))
    break;
   strcpy (string + stringlength, entry);
   stringlength += j;
   cnt++;
  }
 }

 trap_SendServerCommand( ent-g_entities, va("tinfo %i %s", cnt, string) );
}
