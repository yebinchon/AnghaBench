
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* persistant; } ;
typedef TYPE_1__ playerState_t ;
typedef int buf ;
struct TYPE_5__ {int maxclients; } ;


 scalar_t__ BotAI_GetClientState (int,TYPE_1__*) ;
 scalar_t__ CS_PLAYERS ;
 int EasyClientName (int,char*,int) ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 size_t PERS_SCORE ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (char*) ;
 TYPE_2__ level ;
 int strlen (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

char *BotLastClientInRankings(void) {
 int i, worstscore, bestclient;
 char buf[MAX_INFO_STRING];
 static char name[32];
 playerState_t ps;

 worstscore = 999999;
 bestclient = 0;
 for (i = 0; i < level.maxclients; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;

  if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;

  if (BotAI_GetClientState(i, &ps) && ps.persistant[PERS_SCORE] < worstscore) {
   worstscore = ps.persistant[PERS_SCORE];
   bestclient = i;
  }
 }
 EasyClientName(bestclient, name, 32);
 return name;
}
