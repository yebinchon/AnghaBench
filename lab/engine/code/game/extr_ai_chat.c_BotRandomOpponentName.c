
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int name ;
typedef int buf ;
struct TYPE_5__ {int client; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_6__ {int maxclients; } ;


 scalar_t__ BotSameTeam (TYPE_1__*,int) ;
 scalar_t__ CS_PLAYERS ;
 int EasyClientName (int,char*,int) ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (char*) ;
 TYPE_2__ level ;
 int random () ;
 int strlen (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

char *BotRandomOpponentName(bot_state_t *bs) {
 int i, count;
 char buf[MAX_INFO_STRING];
 int opponents[MAX_CLIENTS], numopponents;
 static char name[32];

 numopponents = 0;
 opponents[0] = 0;
 for (i = 0; i < level.maxclients; i++) {
  if (i == bs->client) continue;

  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;

  if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;

  if (BotSameTeam(bs, i)) continue;

  opponents[numopponents] = i;
  numopponents++;
 }
 count = random() * numopponents;
 for (i = 0; i < numopponents; i++) {
  count--;
  if (count <= 0) {
   EasyClientName(opponents[i], name, sizeof(name));
   return name;
  }
 }
 EasyClientName(opponents[0], name, sizeof(name));
 return name;
}
