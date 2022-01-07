
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_9__ {int client; int origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_10__ {int* movedir; int flags; int ideal_viewangles; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_11__ {int end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int EA_MoveForward (int ) ;
 int EA_MoveUp (int ) ;
 int MOVERESULT_MOVEMENTVIEW ;
 int Vector2Angles (int*,int ) ;
 int VectorCopy (int*,int*) ;
 float VectorNormalize (int*) ;
 int VectorSubtract (int ,int ,int*) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 int crandom () ;
 TYPE_2__ result ;

bot_moveresult_t BotTravel_WaterJump(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t dir, hordir;
 float dist;
 bot_moveresult_t_cleared( result );


 VectorSubtract(reach->end, ms->origin, dir);
 VectorCopy(dir, hordir);
 hordir[2] = 0;
 dir[2] += 15 + crandom() * 40;

 VectorNormalize(dir);
 dist = VectorNormalize(hordir);


 EA_MoveForward(ms->client);

 if (dist < 40) EA_MoveUp(ms->client);

 Vector2Angles(dir, result.ideal_viewangles);
 result.flags |= MOVERESULT_MOVEMENTVIEW;

 VectorCopy(dir, result.movedir);

 return result;
}
