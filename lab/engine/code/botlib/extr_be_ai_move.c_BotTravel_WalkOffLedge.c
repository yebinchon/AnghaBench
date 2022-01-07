
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_11__ {int client; scalar_t__* origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {scalar_t__* end; scalar_t__* start; } ;
typedef TYPE_3__ aas_reachability_t ;


 int AAS_HorizontalVelocityForJump (int ,scalar_t__*,scalar_t__*,float*) ;
 int BotCheckBlocked (TYPE_1__*,scalar_t__*,int ,TYPE_2__*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int VectorCopy (scalar_t__*,int ) ;
 float VectorLength (scalar_t__*) ;
 float VectorNormalize (scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 int qtrue ;
 TYPE_2__ result ;

bot_moveresult_t BotTravel_WalkOffLedge(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t hordir, dir;
 float dist, speed, reachhordist;
 bot_moveresult_t_cleared( result );


 VectorSubtract(reach->start, ms->origin, dir);
 VectorNormalize(dir);
 BotCheckBlocked(ms, dir, qtrue, &result);

 VectorSubtract(reach->end, reach->start, dir);
 dir[2] = 0;
 reachhordist = VectorLength(dir);

 hordir[0] = reach->start[0] - ms->origin[0];
 hordir[1] = reach->start[1] - ms->origin[1];
 hordir[2] = 0;
 dist = VectorNormalize(hordir);

 if (dist < 48)
 {
  hordir[0] = reach->end[0] - ms->origin[0];
  hordir[1] = reach->end[1] - ms->origin[1];
  hordir[2] = 0;
  VectorNormalize(hordir);

  if (reachhordist < 20)
  {
   speed = 100;
  }
  else if (!AAS_HorizontalVelocityForJump(0, reach->start, reach->end, &speed))
  {
   speed = 400;
  }
 }
 else
 {
  if (reachhordist < 20)
  {
   if (dist > 64) dist = 64;
   speed = 400 - (256 - 4 * dist);
  }
  else
  {
   speed = 400;
  }
 }

 BotCheckBlocked(ms, hordir, qtrue, &result);

 EA_Move(ms->client, hordir, speed);
 VectorCopy(hordir, result.movedir);

 return result;
}
