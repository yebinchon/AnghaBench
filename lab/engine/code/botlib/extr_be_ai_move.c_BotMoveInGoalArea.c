
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_11__ {int moveflags; int lastorigin; scalar_t__* origin; int lastgoalareanum; scalar_t__ lastareanum; scalar_t__ lastreachnum; int client; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int flags; int ideal_viewangles; int movedir; int traveltype; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {int areanum; scalar_t__* origin; } ;
typedef TYPE_3__ bot_goal_t ;


 int BotCheckBlocked (TYPE_1__*,scalar_t__*,int ,TYPE_2__*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int MFL_SWIMMING ;
 int MOVERESULT_SWIMVIEW ;
 int TRAVEL_SWIM ;
 int TRAVEL_WALK ;
 int Vector2Angles (scalar_t__*,int ) ;
 int VectorCopy (scalar_t__*,int ) ;
 float VectorNormalize (scalar_t__*) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 int qtrue ;
 TYPE_2__ result ;

bot_moveresult_t BotMoveInGoalArea(bot_movestate_t *ms, bot_goal_t *goal)
{
 bot_moveresult_t_cleared( result );
 vec3_t dir;
 float dist, speed;







 dir[0] = goal->origin[0] - ms->origin[0];
 dir[1] = goal->origin[1] - ms->origin[1];
 if (ms->moveflags & MFL_SWIMMING)
 {
  dir[2] = goal->origin[2] - ms->origin[2];
  result.traveltype = TRAVEL_SWIM;
 }
 else
 {
  dir[2] = 0;
  result.traveltype = TRAVEL_WALK;
 }

 dist = VectorNormalize(dir);
 if (dist > 100) dist = 100;
 speed = 400 - (400 - 4 * dist);
 if (speed < 10) speed = 0;

 BotCheckBlocked(ms, dir, qtrue, &result);

 EA_Move(ms->client, dir, speed);
 VectorCopy(dir, result.movedir);

 if (ms->moveflags & MFL_SWIMMING)
 {
  Vector2Angles(dir, result.ideal_viewangles);
  result.flags |= MOVERESULT_SWIMVIEW;
 }



 ms->lastreachnum = 0;
 ms->lastareanum = 0;
 ms->lastgoalareanum = goal->areanum;
 VectorCopy(ms->origin, ms->lastorigin);

 return result;
}
