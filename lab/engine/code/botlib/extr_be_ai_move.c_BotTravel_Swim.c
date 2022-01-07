
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_11__ {int client; int origin; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_12__ {int flags; int ideal_viewangles; int movedir; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_13__ {int start; } ;
typedef TYPE_3__ aas_reachability_t ;


 int BotCheckBlocked (TYPE_1__*,int ,int ,TYPE_2__*) ;
 int EA_Move (int ,int ,int) ;
 int MOVERESULT_SWIMVIEW ;
 int Vector2Angles (int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 int qtrue ;
 TYPE_2__ result ;

bot_moveresult_t BotTravel_Swim(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t dir;
 bot_moveresult_t_cleared( result );


 VectorSubtract(reach->start, ms->origin, dir);
 VectorNormalize(dir);

 BotCheckBlocked(ms, dir, qtrue, &result);

 EA_Move(ms->client, dir, 400);

 VectorCopy(dir, result.movedir);
 Vector2Angles(dir, result.ideal_viewangles);
 result.flags |= MOVERESULT_SWIMVIEW;

 return result;
}
