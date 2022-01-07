
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
typedef int bot_state_t ;
struct TYPE_2__ {int maxclients; } ;


 int BotCreateGroup (int *,int*,int) ;
 scalar_t__ BotSameTeam (int *,int) ;
 scalar_t__ CS_PLAYERS ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (char*) ;
 TYPE_1__ level ;
 int strlen (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

void BotTeamOrders(bot_state_t *bs) {
 int teammates[MAX_CLIENTS];
 int numteammates, i;
 char buf[MAX_INFO_STRING];

 numteammates = 0;
 for (i = 0; i < level.maxclients; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;

  if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;

  if (BotSameTeam(bs, i)) {
   teammates[numteammates] = i;
   numteammates++;
  }
 }

 switch(numteammates) {
  case 1: break;
  case 2:
  {

   break;
  }
  case 3:
  {

   BotCreateGroup(bs, teammates, 2);
   break;
  }
  case 4:
  {
   BotCreateGroup(bs, teammates, 2);
   BotCreateGroup(bs, &teammates[2], 2);
   break;
  }
  case 5:
  {
   BotCreateGroup(bs, teammates, 2);
   BotCreateGroup(bs, &teammates[2], 3);
   break;
  }
  default:
  {
   if (numteammates <= 10) {
    for (i = 0; i < numteammates / 2; i++) {
     BotCreateGroup(bs, &teammates[i*2], 2);
    }
   }
   break;
  }
 }
}
