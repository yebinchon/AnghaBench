
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_11__ {int moveflags; int client; scalar_t__* origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int movedir; int flags; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {scalar_t__* end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotFuncBobStartEnd (TYPE_3__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int MFL_SWIMMING ;
 int MOVERESULT_SWIMVIEW ;
 int MoverBottomCenter (TYPE_3__*,scalar_t__*) ;
 int VectorCopy (scalar_t__*,int ) ;
 float VectorLength (scalar_t__*) ;
 float VectorNormalize (scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 TYPE_2__ result ;

bot_moveresult_t BotFinishTravel_FuncBobbing(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t bob_origin, bob_start, bob_end, dir, hordir, bottomcenter;
 bot_moveresult_t_cleared( result );
 float dist, speed;


 BotFuncBobStartEnd(reach, bob_start, bob_end, bob_origin);

 VectorSubtract(bob_origin, bob_end, dir);
 dist = VectorLength(dir);

 if (dist < 16)
 {
  VectorSubtract(reach->end, ms->origin, hordir);
  if (!(ms->moveflags & MFL_SWIMMING)) hordir[2] = 0;
  dist = VectorNormalize(hordir);

  if (dist > 60) dist = 60;
  speed = 360 - (360 - 6 * dist);

  if (speed > 5) EA_Move(ms->client, dir, speed);
  VectorCopy(dir, result.movedir);

  if (ms->moveflags & MFL_SWIMMING) result.flags |= MOVERESULT_SWIMVIEW;
 }
 else
 {
  MoverBottomCenter(reach, bottomcenter);
  VectorSubtract(bottomcenter, ms->origin, hordir);
  if (!(ms->moveflags & MFL_SWIMMING)) hordir[2] = 0;
  dist = VectorNormalize(hordir);

  if (dist > 5)
  {

   if (dist > 100) dist = 100;
   speed = 400 - (400 - 4 * dist);

   EA_Move(ms->client, hordir, speed);
   VectorCopy(hordir, result.movedir);
  }
 }
 return result;
}
