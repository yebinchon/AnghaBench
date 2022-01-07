
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_6__ {double fraction; int* endpos; int planenum; scalar_t__ startsolid; } ;
typedef TYPE_1__ aas_trace_t ;
struct TYPE_7__ {int normal; } ;
typedef TYPE_2__ aas_plane_t ;
struct TYPE_8__ {scalar_t__ phys_maxsteepness; } ;


 TYPE_2__* AAS_PlaneFromNum (int ) ;
 TYPE_1__ AAS_TraceClientBBox (int*,int*,int,int) ;
 scalar_t__ DotProduct (int ,int*) ;
 int VectorCopy (int*,int*) ;
 TYPE_3__ aassettings ;
 int qfalse ;
 int qtrue ;

int AAS_OnGround(vec3_t origin, int presencetype, int passent)
{
 aas_trace_t trace;
 vec3_t end, up = {0, 0, 1};
 aas_plane_t *plane;

 VectorCopy(origin, end);
 end[2] -= 10;

 trace = AAS_TraceClientBBox(origin, end, presencetype, passent);


 if (trace.startsolid) return qfalse;

 if (trace.fraction >= 1.0) return qfalse;

 if (origin[2] - trace.endpos[2] > 10) return qfalse;

 plane = AAS_PlaneFromNum(trace.planenum);
 if (DotProduct(plane->normal, up) < aassettings.phys_maxsteepness) return qfalse;

 return qtrue;
}
