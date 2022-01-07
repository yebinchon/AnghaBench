
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bot_state_t ;


 scalar_t__ BotTeam (int *) ;
 int CONTEXT_CTFBLUETEAM ;
 int CONTEXT_CTFREDTEAM ;
 int CONTEXT_HARVESTERBLUETEAM ;
 int CONTEXT_HARVESTERREDTEAM ;
 int CONTEXT_NAMES ;
 int CONTEXT_NEARBYITEM ;
 int CONTEXT_NORMAL ;
 int CONTEXT_OBELISKBLUETEAM ;
 int CONTEXT_OBELISKREDTEAM ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 scalar_t__ TEAM_RED ;
 scalar_t__ gametype ;

int BotSynonymContext(bot_state_t *bs) {
 int context;

 context = CONTEXT_NORMAL|CONTEXT_NEARBYITEM|CONTEXT_NAMES;

 if (gametype == GT_CTF



  ) {
  if (BotTeam(bs) == TEAM_RED) context |= CONTEXT_CTFREDTEAM;
  else context |= CONTEXT_CTFBLUETEAM;
 }
 return context;
}
