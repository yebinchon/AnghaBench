
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ areanum; } ;
struct TYPE_8__ {TYPE_2__ altroutegoal; scalar_t__ reachedaltroutegoal_time; int tfl; int origin; int areanum; } ;
typedef TYPE_1__ bot_state_t ;
typedef TYPE_2__ bot_goal_t ;


 scalar_t__ FloatTime () ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int trap_AAS_AreaTravelTimeToGoalArea (int ,int ,scalar_t__,int ) ;

bot_goal_t *BotAlternateRoute(bot_state_t *bs, bot_goal_t *goal) {
 int t;


 if (bs->altroutegoal.areanum) {

  if (bs->reachedaltroutegoal_time)
   return goal;

  t = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, bs->altroutegoal.areanum, bs->tfl);
  if (t && t < 20) {

   bs->reachedaltroutegoal_time = FloatTime();
  }
  memcpy(goal, &bs->altroutegoal, sizeof(bot_goal_t));
  return &bs->altroutegoal;
 }
 return goal;
}
