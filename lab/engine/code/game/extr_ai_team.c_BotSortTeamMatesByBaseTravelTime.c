
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
typedef int bot_state_t ;
typedef int bot_goal_t ;
struct TYPE_2__ {int maxclients; } ;


 int BotClientTravelTimeToGoal (int,int *) ;
 scalar_t__ BotSameTeam (int *,int) ;
 scalar_t__ BotTeam (int *) ;
 scalar_t__ CS_PLAYERS ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 char* Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 int MAX_INFO_STRING ;
 scalar_t__ TEAM_RED ;
 scalar_t__ TEAM_SPECTATOR ;
 scalar_t__ atoi (char*) ;
 int blueobelisk ;
 int ctf_blueflag ;
 int ctf_redflag ;
 scalar_t__ gametype ;
 TYPE_1__ level ;
 int redobelisk ;
 int strlen (char*) ;
 int trap_GetConfigstring (scalar_t__,char*,int) ;

int BotSortTeamMatesByBaseTravelTime(bot_state_t *bs, int *teammates, int maxteammates) {

 int i, j, k, numteammates, traveltime;
 char buf[MAX_INFO_STRING];
 int traveltimes[MAX_CLIENTS];
 bot_goal_t *goal = ((void*)0);




 if (gametype == GT_CTF)

 {
  if (BotTeam(bs) == TEAM_RED)
   goal = &ctf_redflag;
  else
   goal = &ctf_blueflag;
 }
 numteammates = 0;
 for (i = 0; i < level.maxclients; i++) {
  trap_GetConfigstring(CS_PLAYERS+i, buf, sizeof(buf));

  if (!strlen(buf) || !strlen(Info_ValueForKey(buf, "n"))) continue;

  if (atoi(Info_ValueForKey(buf, "t")) == TEAM_SPECTATOR) continue;

  if (BotSameTeam(bs, i) && goal) {

   traveltime = BotClientTravelTimeToGoal(i, goal);

   for (j = 0; j < numteammates; j++) {
    if (traveltime < traveltimes[j]) {
     for (k = numteammates; k > j; k--) {
      traveltimes[k] = traveltimes[k-1];
      teammates[k] = teammates[k-1];
     }
     break;
    }
   }
   traveltimes[j] = traveltime;
   teammates[j] = i;
   numteammates++;
   if (numteammates >= maxteammates) break;
  }
 }
 return numteammates;
}
