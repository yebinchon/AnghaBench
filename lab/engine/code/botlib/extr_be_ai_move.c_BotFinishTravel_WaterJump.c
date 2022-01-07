
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_9__ {int moveflags; int* origin; int client; } ;
typedef TYPE_1__ bot_movestate_t ;
struct TYPE_10__ {int* movedir; int flags; int ideal_viewangles; } ;
typedef TYPE_2__ bot_moveresult_t ;
struct TYPE_11__ {int end; } ;
typedef TYPE_3__ aas_reachability_t ;


 int AAS_PointContents (int*) ;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_WATER ;
 int EA_Move (int ,int*,int) ;
 int MFL_WATERJUMP ;
 int MOVERESULT_MOVEMENTVIEW ;
 int Vector2Angles (int*,int ) ;
 int VectorCopy (int*,int*) ;
 int VectorSubtract (int ,int*,int*) ;
 int bot_moveresult_t_cleared (TYPE_2__) ;
 int crandom () ;
 TYPE_2__ result ;

bot_moveresult_t BotFinishTravel_WaterJump(bot_movestate_t *ms, aas_reachability_t *reach)
{
 vec3_t dir, pnt;
 bot_moveresult_t_cleared( result );



 if (ms->moveflags & MFL_WATERJUMP) return result;


 VectorCopy(ms->origin, pnt);
 pnt[2] -= 32;
 if (!(AAS_PointContents(pnt) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER))) return result;

 VectorSubtract(reach->end, ms->origin, dir);
 dir[0] += crandom() * 10;
 dir[1] += crandom() * 10;
 dir[2] += 70 + crandom() * 10;

 EA_Move(ms->client, dir, 400);

 Vector2Angles(dir, result.ideal_viewangles);
 result.flags |= MOVERESULT_MOVEMENTVIEW;

 VectorCopy(dir, result.movedir);

 return result;
}
