
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ainode; int gs; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_7__ {int number; } ;
typedef TYPE_2__ bot_goal_t ;


 int AINode_Seek_NBG ;
 int BotRecordNodeSwitch (TYPE_1__*,char*,char*,char*) ;
 scalar_t__ trap_BotGetTopGoal (int ,TYPE_2__*) ;
 int trap_BotGoalName (int ,char*,int) ;

void AIEnter_Seek_NBG(bot_state_t *bs, char *s) {
 bot_goal_t goal;
 char buf[144];

 if (trap_BotGetTopGoal(bs->gs, &goal)) {
  trap_BotGoalName(goal.number, buf, 144);
  BotRecordNodeSwitch(bs, "seek NBG", buf, s);
 }
 else {
  BotRecordNodeSwitch(bs, "seek NBG", "no goal", s);
 }
 bs->ainode = AINode_Seek_NBG;
}
