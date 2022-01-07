
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_9__ {int type; int signbits; int normal; int dist; } ;
struct TYPE_11__ {int surfaceFlags; int startsolid; TYPE_2__ plane; int fraction; int entityNum; int endpos; int contents; int allsolid; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_10__ {int flags; } ;
struct TYPE_8__ {int type; int signbits; int normal; int dist; } ;
struct TYPE_12__ {TYPE_3__ surface; int startsolid; scalar_t__ sidenum; TYPE_1__ plane; scalar_t__ exp_dist; int fraction; int ent; int endpos; int contents; int allsolid; } ;
typedef TYPE_5__ bsp_trace_t ;


 int CM_BoxTrace (TYPE_4__*,int ,int ,int ,int ,int ,int,int ) ;
 int VectorCopy (int ,int ) ;
 int capsule_collision ;
 int worldmodel ;

void BotImport_Trace(bsp_trace_t *bsptrace, vec3_t start, vec3_t mins, vec3_t maxs, vec3_t end, int passent, int contentmask)
{
 trace_t result;

 CM_BoxTrace(&result, start, end, mins, maxs, worldmodel, contentmask, capsule_collision);

 bsptrace->allsolid = result.allsolid;
 bsptrace->contents = result.contents;
 VectorCopy(result.endpos, bsptrace->endpos);
 bsptrace->ent = result.entityNum;
 bsptrace->fraction = result.fraction;
 bsptrace->exp_dist = 0;
 bsptrace->plane.dist = result.plane.dist;
 VectorCopy(result.plane.normal, bsptrace->plane.normal);
 bsptrace->plane.signbits = result.plane.signbits;
 bsptrace->plane.type = result.plane.type;
 bsptrace->sidenum = 0;
 bsptrace->startsolid = result.startsolid;
 bsptrace->surface.flags = result.surfaceFlags;
}
