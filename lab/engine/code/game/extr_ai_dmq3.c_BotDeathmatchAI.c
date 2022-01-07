
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int userinfo ;
typedef int name ;
typedef int gender ;
struct TYPE_18__ {int * persistant; } ;
struct TYPE_19__ {scalar_t__ setupcount; int entergame_time; TYPE_1__ cur_ps; int lasthitcount; int * inventory; int lastframe_health; int client; int gs; int inuse; scalar_t__ (* ainode ) (TYPE_2__*) ;scalar_t__ entergamechat; scalar_t__ stand_time; int flags; int cs; int character; } ;
typedef TYPE_2__ bot_state_t ;


 int AIEnter_Seek_LTG (TYPE_2__*,char*) ;
 int AIEnter_Stand (TYPE_2__*,char*) ;
 int BFL_IDEALVIEWSET ;
 int BotAI_Print (int ,char*,char*,int,int) ;
 scalar_t__ BotChatTime (TYPE_2__*) ;
 scalar_t__ BotChat_EnterGame (TYPE_2__*) ;
 int BotCheckAir (TYPE_2__*) ;
 int BotCheckConsoleMessages (TYPE_2__*) ;
 int BotCheckSnapshot (TYPE_2__*) ;
 int BotDumpNodeSwitches (TYPE_2__*) ;
 int BotIntermission (TYPE_2__*) ;
 int BotIsObserver (TYPE_2__*) ;
 int BotResetNodeSwitches () ;
 int BotSetTeleportTime (TYPE_2__*) ;
 int BotSetupAlternativeRouteGoals () ;
 int BotTeamAI (TYPE_2__*) ;
 int BotUpdateInventory (TYPE_2__*) ;
 int CHARACTERISTIC_GENDER ;
 int CHAT_GENDERFEMALE ;
 int CHAT_GENDERLESS ;
 int CHAT_GENDERMALE ;
 int ClientName (int ,char*,int) ;
 int FloatTime () ;
 size_t INVENTORY_HEALTH ;
 int Info_SetValueForKey (char*,char*,char*) ;
 int MAX_INFO_STRING ;
 int MAX_NODESWITCHES ;
 size_t PERS_HITS ;
 int PRT_ERROR ;
 scalar_t__ qtrue ;
 scalar_t__ stub1 (TYPE_2__*) ;
 int trap_BotDumpAvoidGoals (int ) ;
 int trap_BotDumpGoalStack (int ) ;
 int trap_BotSetChatGender (int ,int ) ;
 int trap_BotSetChatName (int ,char*,int ) ;
 int trap_Characteristic_String (int ,int ,char*,int) ;
 int trap_GetUserinfo (int ,char*,int) ;
 int trap_SetUserinfo (int ,char*) ;

void BotDeathmatchAI(bot_state_t *bs, float thinktime) {
 char gender[144], name[144];
 char userinfo[MAX_INFO_STRING];
 int i;


 if (bs->setupcount > 0) {
  bs->setupcount--;
  if (bs->setupcount > 0) return;

  trap_Characteristic_String(bs->character, CHARACTERISTIC_GENDER, gender, sizeof(gender));

  trap_GetUserinfo(bs->client, userinfo, sizeof(userinfo));
  Info_SetValueForKey(userinfo, "sex", gender);
  trap_SetUserinfo(bs->client, userinfo);

  if (gender[0] == 'm') trap_BotSetChatGender(bs->cs, CHAT_GENDERMALE);
  else if (gender[0] == 'f') trap_BotSetChatGender(bs->cs, CHAT_GENDERFEMALE);
  else trap_BotSetChatGender(bs->cs, CHAT_GENDERLESS);

  ClientName(bs->client, name, sizeof(name));
  trap_BotSetChatName(bs->cs, name, bs->client);

  bs->lastframe_health = bs->inventory[INVENTORY_HEALTH];
  bs->lasthitcount = bs->cur_ps.persistant[PERS_HITS];

  bs->setupcount = 0;

  BotSetupAlternativeRouteGoals();
 }

 bs->flags &= ~BFL_IDEALVIEWSET;

 if (!BotIntermission(bs)) {

  BotSetTeleportTime(bs);

  BotUpdateInventory(bs);

  BotCheckSnapshot(bs);

  BotCheckAir(bs);
 }

 BotCheckConsoleMessages(bs);

 if (!BotIntermission(bs) && !BotIsObserver(bs)) {

  BotTeamAI(bs);
 }

 if (!bs->ainode) {
  AIEnter_Seek_LTG(bs, "BotDeathmatchAI: no ai node");
 }

 if (!bs->entergamechat && bs->entergame_time > FloatTime() - 8) {
  if (BotChat_EnterGame(bs)) {
   bs->stand_time = FloatTime() + BotChatTime(bs);
   AIEnter_Stand(bs, "BotDeathmatchAI: chat enter game");
  }
  bs->entergamechat = qtrue;
 }

 BotResetNodeSwitches();

 for (i = 0; i < MAX_NODESWITCHES; i++) {
  if (bs->ainode(bs)) break;
 }

 if (!bs->inuse) return;

 if (i >= MAX_NODESWITCHES) {
  trap_BotDumpGoalStack(bs->gs);
  trap_BotDumpAvoidGoals(bs->gs);
  BotDumpNodeSwitches(bs);
  ClientName(bs->client, name, sizeof(name));
  BotAI_Print(PRT_ERROR, "%s at %1.1f switched more than %d AI nodes\n", name, FloatTime(), MAX_NODESWITCHES);
 }

 bs->lastframe_health = bs->inventory[INVENTORY_HEALTH];
 bs->lasthitcount = bs->cur_ps.persistant[PERS_HITS];
}
