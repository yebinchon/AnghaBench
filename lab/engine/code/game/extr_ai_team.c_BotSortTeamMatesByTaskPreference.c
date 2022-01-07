
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_state_t ;


 int BotGetTeamMateTaskPreference (int *,int) ;
 int MAX_CLIENTS ;
 int TEAMTP_ATTACKER ;
 int TEAMTP_DEFENDER ;
 int memcpy (int*,int*,int) ;

int BotSortTeamMatesByTaskPreference(bot_state_t *bs, int *teammates, int numteammates) {
 int defenders[MAX_CLIENTS], numdefenders;
 int attackers[MAX_CLIENTS], numattackers;
 int roamers[MAX_CLIENTS], numroamers;
 int i, preference;

 numdefenders = numattackers = numroamers = 0;
 for (i = 0; i < numteammates; i++) {
  preference = BotGetTeamMateTaskPreference(bs, teammates[i]);
  if (preference & TEAMTP_DEFENDER) {
   defenders[numdefenders++] = teammates[i];
  }
  else if (preference & TEAMTP_ATTACKER) {
   attackers[numattackers++] = teammates[i];
  }
  else {
   roamers[numroamers++] = teammates[i];
  }
 }
 numteammates = 0;

 memcpy(&teammates[numteammates], defenders, numdefenders * sizeof(int));
 numteammates += numdefenders;

 memcpy(&teammates[numteammates], roamers, numroamers * sizeof(int));
 numteammates += numroamers;

 memcpy(&teammates[numteammates], attackers, numattackers * sizeof(int));
 numteammates += numattackers;

 return numteammates;
}
