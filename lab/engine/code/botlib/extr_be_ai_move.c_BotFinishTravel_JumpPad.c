
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_11__ {int client; scalar_t__* origin; int velocity; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {scalar_t__* end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotAirControl (scalar_t__*,int ,scalar_t__*,scalar_t__*,float*) ;
 int BotCheckBlocked (TYPE_1__*,scalar_t__*,int ,TYPE_2__*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int VectorCopy (scalar_t__*,int ) ;
 int VectorNormalize (scalar_t__*) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 int qtrue ;
 TYPE_2__ result ;

bot_moveresult_t BotFinishTravel_JumpPad(bot_movestate_t *ms, aas_reachability_t *reach)
{
 float speed;
 vec3_t hordir;
 bot_moveresult_t_cleared( result );

 if (!BotAirControl(ms->origin, ms->velocity, reach->end, hordir, &speed))
 {
  hordir[0] = reach->end[0] - ms->origin[0];
  hordir[1] = reach->end[1] - ms->origin[1];
  hordir[2] = 0;
  VectorNormalize(hordir);
  speed = 400;
 }
 BotCheckBlocked(ms, hordir, qtrue, &result);

 EA_Move(ms->client, hordir, speed);
 VectorCopy(hordir, result.movedir);

 return result;
}
