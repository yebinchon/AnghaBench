
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
struct TYPE_11__ {int entityNum; int surfaceFlags; TYPE_2__ plane; int endpos; int fraction; int startsolid; int allsolid; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_10__ {int flags; scalar_t__ value; } ;
struct TYPE_8__ {int type; int signbits; int normal; int dist; } ;
struct TYPE_12__ {scalar_t__ contents; scalar_t__ sidenum; scalar_t__ exp_dist; int ent; TYPE_3__ surface; TYPE_1__ plane; int endpos; int fraction; int startsolid; int allsolid; } ;
typedef TYPE_5__ bsp_trace_t ;


 int SV_Trace (TYPE_4__*,int ,int ,int ,int ,int,int,int ) ;
 int VectorCopy (int ,int ) ;
 int qfalse ;

__attribute__((used)) static void BotImport_Trace(bsp_trace_t *bsptrace, vec3_t start, vec3_t mins, vec3_t maxs, vec3_t end, int passent, int contentmask) {
 trace_t trace;

 SV_Trace(&trace, start, mins, maxs, end, passent, contentmask, qfalse);

 bsptrace->allsolid = trace.allsolid;
 bsptrace->startsolid = trace.startsolid;
 bsptrace->fraction = trace.fraction;
 VectorCopy(trace.endpos, bsptrace->endpos);
 bsptrace->plane.dist = trace.plane.dist;
 VectorCopy(trace.plane.normal, bsptrace->plane.normal);
 bsptrace->plane.signbits = trace.plane.signbits;
 bsptrace->plane.type = trace.plane.type;
 bsptrace->surface.value = 0;
 bsptrace->surface.flags = trace.surfaceFlags;
 bsptrace->ent = trace.entityNum;
 bsptrace->exp_dist = 0;
 bsptrace->sidenum = 0;
 bsptrace->contents = 0;
}
