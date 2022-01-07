
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {int client; int lastreachnum; int jumpreach; scalar_t__* origin; int * viewangles; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_11__ {int* ideal_viewangles; int weapon; int movedir; int flags; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_12__ {scalar_t__* end; scalar_t__* start; } ;
typedef TYPE_3__ aas_reachability_t ;
struct TYPE_13__ {scalar_t__ value; } ;


 int AngleDiff (int,int ) ;
 int EA_Attack (int ) ;
 int EA_Jump (int ) ;
 int EA_Move (int ,scalar_t__*,float) ;
 int EA_SelectWeapon (int ,int) ;
 int EA_View (int ,int*) ;
 int MOVERESULT_MOVEMENTVIEWSET ;
 int MOVERESULT_MOVEMENTWEAPON ;
 size_t PITCH ;
 int Vector2Angles (scalar_t__*,int*) ;
 int VectorCopy (scalar_t__*,int ) ;
 float VectorNormalize (scalar_t__*) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 int fabs (int ) ;
 TYPE_2__ result ;
 TYPE_4__* weapindex_rocketlauncher ;

bot_moveresult_t BotTravel_RocketJump(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t hordir;
 float dist, speed;
 bot_moveresult_t_cleared( result );



 hordir[0] = reach->start[0] - ms->origin[0];
 hordir[1] = reach->start[1] - ms->origin[1];
 hordir[2] = 0;

 dist = VectorNormalize(hordir);

 Vector2Angles(hordir, result.ideal_viewangles);

 result.ideal_viewangles[PITCH] = 90;

 if (dist < 5 &&
   fabs(AngleDiff(result.ideal_viewangles[0], ms->viewangles[0])) < 5 &&
   fabs(AngleDiff(result.ideal_viewangles[1], ms->viewangles[1])) < 5)
 {

  hordir[0] = reach->end[0] - ms->origin[0];
  hordir[1] = reach->end[1] - ms->origin[1];
  hordir[2] = 0;
  VectorNormalize(hordir);

  EA_Jump(ms->client);
  EA_Attack(ms->client);
  EA_Move(ms->client, hordir, 800);

  ms->jumpreach = ms->lastreachnum;
 }
 else
 {
  if (dist > 80) dist = 80;
  speed = 400 - (400 - 5 * dist);
  EA_Move(ms->client, hordir, speed);
 }

 Vector2Angles(hordir, result.ideal_viewangles);

 result.ideal_viewangles[PITCH] = 90;

 EA_View(ms->client, result.ideal_viewangles);

 result.flags |= MOVERESULT_MOVEMENTVIEWSET;

 EA_SelectWeapon(ms->client, (int) weapindex_rocketlauncher->value);

 result.weapon = (int) weapindex_rocketlauncher->value;
 result.flags |= MOVERESULT_MOVEMENTWEAPON;

 VectorCopy(hordir, result.movedir);

 return result;
}
