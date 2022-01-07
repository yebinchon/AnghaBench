
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {double fraction; int entityNum; } ;
typedef TYPE_1__ trace_t ;


 int CG_ClipMoveToEntities (int const,int const,int const,int const,int,int,TYPE_1__*) ;
 int ENTITYNUM_NONE ;
 int ENTITYNUM_WORLD ;
 int trap_CM_BoxTrace (TYPE_1__*,int const,int const,int const,int const,int ,int) ;

void CG_Trace( trace_t *result, const vec3_t start, const vec3_t mins, const vec3_t maxs, const vec3_t end,
      int skipNumber, int mask ) {
 trace_t t;

 trap_CM_BoxTrace ( &t, start, end, mins, maxs, 0, mask);
 t.entityNum = t.fraction != 1.0 ? ENTITYNUM_WORLD : ENTITYNUM_NONE;

 CG_ClipMoveToEntities (start, mins, maxs, end, skipNumber, mask, &t);

 *result = t;
}
