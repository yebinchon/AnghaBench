
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int netname ;
struct TYPE_5__ {scalar_t__ ltg_time; int gs; int ms; int client; int inventory; int origin; } ;
typedef TYPE_1__ bot_state_t ;
typedef int bot_goal_t ;


 int BotAI_Print (int ,char*,int ) ;
 int BotChooseWeapon (TYPE_1__*) ;
 scalar_t__ BotReachedGoal (TYPE_1__*,int *) ;
 int ClientName (int ,char*,int) ;
 scalar_t__ FloatTime () ;
 int PRT_MESSAGE ;
 int qtrue ;
 scalar_t__ trap_BotChooseLTGItem (int ,int ,int ,int) ;
 int trap_BotGetTopGoal (int ,int *) ;
 int trap_BotPopGoal (int ) ;
 int trap_BotResetAvoidGoals (int ) ;
 int trap_BotResetAvoidReach (int ) ;

int BotGetItemLongTermGoal(bot_state_t *bs, int tfl, bot_goal_t *goal) {

 if (!trap_BotGetTopGoal(bs->gs, goal)) {

  bs->ltg_time = 0;
 }

 else if (BotReachedGoal(bs, goal)) {
  BotChooseWeapon(bs);
  bs->ltg_time = 0;
 }

 if (bs->ltg_time < FloatTime()) {

  trap_BotPopGoal(bs->gs);



  if (trap_BotChooseLTGItem(bs->gs, bs->origin, bs->inventory, tfl)) {







   bs->ltg_time = FloatTime() + 20;
  }
  else {
   trap_BotResetAvoidGoals(bs->gs);
   trap_BotResetAvoidReach(bs->ms);
  }

  return trap_BotGetTopGoal(bs->gs, goal);
 }
 return qtrue;
}
