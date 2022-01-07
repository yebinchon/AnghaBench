
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_9__ {int client; int origin; int velocity; int jumpreach; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_10__ {int movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_11__ {int end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotAirControl (int ,int ,int ,scalar_t__*,float*) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int VectorCopy (scalar_t__*,int ) ;
 int VectorNormalize (scalar_t__*) ;
 int VectorSubtract (int ,int ,scalar_t__*) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 TYPE_2__ result ;

bot_moveresult_t BotFinishTravel_WeaponJump(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t hordir;
 float speed;
 bot_moveresult_t_cleared( result );


 if (!ms->jumpreach) return result;
 if (!BotAirControl(ms->origin, ms->velocity, reach->end, hordir, &speed))
 {

  VectorSubtract(reach->end, ms->origin, hordir);
  hordir[2] = 0;
  VectorNormalize(hordir);
  speed = 400;
 }

 EA_Move(ms->client, hordir, speed);
 VectorCopy(hordir, result.movedir);

 return result;
}
