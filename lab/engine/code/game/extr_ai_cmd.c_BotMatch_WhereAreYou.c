
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int netname ;
struct TYPE_10__ {int cs; int origin; int areanum; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_match_t ;
typedef int bot_goal_t ;
struct TYPE_14__ {int areanum; } ;
struct TYPE_13__ {int areanum; } ;
struct TYPE_12__ {int areanum; } ;
struct TYPE_11__ {int areanum; } ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,char*,...) ;
 int BotAddressedToBot (TYPE_1__*,int *) ;
 float BotNearestVisibleItem (TYPE_1__*,char*,int *) ;
 int CHAT_TELL ;
 int ClientFromName (char*) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 int MAX_MESSAGE_SIZE ;
 int NETNAME ;
 int TFL_DEFAULT ;
 int TeamPlayIsOn () ;
 TYPE_5__ blueobelisk ;
 TYPE_4__ ctf_blueflag ;
 TYPE_3__ ctf_redflag ;
 scalar_t__ gametype ;
 TYPE_2__ redobelisk ;
 int trap_AAS_AreaTravelTimeToGoalArea (int ,int ,int ,int ) ;
 int trap_BotEnterChat (int ,int,int ) ;
 int trap_BotMatchVariable (int *,int ,char*,int) ;

void BotMatch_WhereAreYou(bot_state_t *bs, bot_match_t *match) {
 float dist, bestdist;
 int i, bestitem, redtt, bluett, client;
 bot_goal_t goal;
 char netname[MAX_MESSAGE_SIZE];
 char *nearbyitems[] = {
  "Shotgun",
  "Grenade Launcher",
  "Rocket Launcher",
  "Plasmagun",
  "Railgun",
  "Lightning Gun",
  "BFG10K",
  "Quad Damage",
  "Regeneration",
  "Battle Suit",
  "Speed",
  "Invisibility",
  "Flight",
  "Armor",
  "Heavy Armor",
  "Red Flag",
  "Blue Flag",
  ((void*)0)
 };

 if (!TeamPlayIsOn())
  return;

 if (!BotAddressedToBot(bs, match))
  return;

 bestitem = -1;
 bestdist = 999999;
 for (i = 0; nearbyitems[i]; i++) {
  dist = BotNearestVisibleItem(bs, nearbyitems[i], &goal);
  if (dist < bestdist) {
   bestdist = dist;
   bestitem = i;
  }
 }
 if (bestitem != -1) {
  if (gametype == GT_CTF



   ) {
   redtt = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, ctf_redflag.areanum, TFL_DEFAULT);
   bluett = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, ctf_blueflag.areanum, TFL_DEFAULT);
   if (redtt < (redtt + bluett) * 0.4) {
    BotAI_BotInitialChat(bs, "teamlocation", nearbyitems[bestitem], "red", ((void*)0));
   }
   else if (bluett < (redtt + bluett) * 0.4) {
    BotAI_BotInitialChat(bs, "teamlocation", nearbyitems[bestitem], "blue", ((void*)0));
   }
   else {
    BotAI_BotInitialChat(bs, "location", nearbyitems[bestitem], ((void*)0));
   }
  }
  else {
   BotAI_BotInitialChat(bs, "location", nearbyitems[bestitem], ((void*)0));
  }
  trap_BotMatchVariable(match, NETNAME, netname, sizeof(netname));
  client = ClientFromName(netname);
  trap_BotEnterChat(bs->cs, client, CHAT_TELL);
 }
}
