
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gs; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_6__ {int number; } ;
typedef TYPE_2__ bot_goal_t ;


 int trap_BotGetLevelItemGoal (int,char*,TYPE_2__*) ;
 int trap_BotRemoveFromAvoidGoals (int ,int ) ;

void BotDontAvoid(bot_state_t *bs, char *itemname) {
 bot_goal_t goal;
 int num;

 num = trap_BotGetLevelItemGoal(-1, itemname, &goal);
 while(num >= 0) {
  trap_BotRemoveFromAvoidGoals(bs->gs, goal.number);
  num = trap_BotGetLevelItemGoal(num, itemname, &goal);
 }
}
