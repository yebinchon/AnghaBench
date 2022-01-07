
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
typedef int bot_state_t ;
struct TYPE_2__ {int maxclients; } ;


 scalar_t__ BotSameTeam (int *,int) ;
 scalar_t__ CS_PLAYERS ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (char*) ;
 TYPE_1__ level ;
 int strlen (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int BotNumTeamMates(bot_state_t *bs) {
 int i, numplayers;
 char buf[MAX_INFO_STRING];

 numplayers = 0;
 for (i = 0; i < level.maxclients; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;

  if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;

  if (BotSameTeam(bs, i)) {
   numplayers++;
  }
 }
 return numplayers;
}
