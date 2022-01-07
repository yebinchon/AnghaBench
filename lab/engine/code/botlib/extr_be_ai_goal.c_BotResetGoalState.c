
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ goalstacktop; int goalstack; } ;
typedef TYPE_1__ bot_goalstate_t ;
typedef int bot_goal_t ;


 TYPE_1__* BotGoalStateFromHandle (int) ;
 int BotResetAvoidGoals (int) ;
 int Com_Memset (int ,int ,int) ;
 int MAX_GOALSTACK ;

void BotResetGoalState(int goalstate)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return;
 Com_Memset(gs->goalstack, 0, MAX_GOALSTACK * sizeof(bot_goal_t));
 gs->goalstacktop = 0;
 BotResetAvoidGoals(goalstate);
}
