
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int origin; } ;
typedef TYPE_1__ playerState_t ;
struct TYPE_6__ {int areanum; } ;
typedef TYPE_2__ bot_goal_t ;


 scalar_t__ BotAI_GetClientState (int,TYPE_1__*) ;
 int BotPointAreaNum (int ) ;
 int TFL_DEFAULT ;
 int trap_AAS_AreaTravelTimeToGoalArea (int,int ,int ,int ) ;

int BotClientTravelTimeToGoal(int client, bot_goal_t *goal) {
 playerState_t ps;
 int areanum;

 if (BotAI_GetClientState(client, &ps)) {
  areanum = BotPointAreaNum(ps.origin);
 } else {
  areanum = 0;
 }

 if (!areanum) return 1;
 return trap_AAS_AreaTravelTimeToGoalArea(areanum, ps.origin, goal->areanum, TFL_DEFAULT);
}
