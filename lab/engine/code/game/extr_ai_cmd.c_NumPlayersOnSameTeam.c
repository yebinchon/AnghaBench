
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bot_state_t ;
struct TYPE_2__ {int maxclients; } ;


 scalar_t__ BotSameTeam (int *,int) ;
 scalar_t__ CS_PLAYERS ;
 int MAX_INFO_STRING ;
 TYPE_1__ level ;
 scalar_t__ strlen (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int NumPlayersOnSameTeam(bot_state_t *bs) {
 int i, num;
 char buf[MAX_INFO_STRING];

 num = 0;
 for (i = 0; i < level.maxclients; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, MAX_INFO_STRING);
  if (strlen(buf)) {
   if (BotSameTeam(bs, i+1)) num++;
  }
 }
 return num;
}
