
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int goalstacktop; int * goalstack; } ;
typedef TYPE_1__ bot_goalstate_t ;
typedef int bot_goal_t ;
struct TYPE_5__ {int (* Print ) (int ,char*) ;} ;


 int BotDumpGoalStack (int) ;
 TYPE_1__* BotGoalStateFromHandle (int) ;
 int Com_Memcpy (int *,int *,int) ;
 int MAX_GOALSTACK ;
 int PRT_ERROR ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*) ;

void BotPushGoal(int goalstate, bot_goal_t *goal)
{
 bot_goalstate_t *gs;

 gs = BotGoalStateFromHandle(goalstate);
 if (!gs) return;
 if (gs->goalstacktop >= MAX_GOALSTACK-1)
 {
  botimport.Print(PRT_ERROR, "goal heap overflow\n");
  BotDumpGoalStack(goalstate);
  return;
 }
 gs->goalstacktop++;
 Com_Memcpy(&gs->goalstack[gs->goalstacktop], goal, sizeof(bot_goal_t));
}
