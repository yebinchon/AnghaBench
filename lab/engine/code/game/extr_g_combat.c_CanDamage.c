
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_11__ {double fraction; scalar_t__ entityNum; } ;
typedef TYPE_4__ trace_t ;
typedef int qboolean ;
struct TYPE_9__ {scalar_t__ number; } ;
struct TYPE_8__ {int absmax; int absmin; } ;
struct TYPE_12__ {TYPE_2__ s; TYPE_1__ r; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_10__ {int member_0; int member_1; int member_2; } ;


 int ENTITYNUM_NONE ;
 int MASK_SOLID ;
 int VectorAdd (int ,int ,scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorScale (scalar_t__*,double,scalar_t__*) ;
 int qfalse ;
 int qtrue ;
 int trap_Trace (TYPE_4__*,scalar_t__*,int ,int ,scalar_t__*,int ,int ) ;
 int vec3_origin ;

qboolean CanDamage (gentity_t *targ, vec3_t origin) {
 vec3_t dest;
 trace_t tr;
 vec3_t midpoint;
 vec3_t offsetmins = {-15, -15, -15};
 vec3_t offsetmaxs = {15, 15, 15};



 VectorAdd (targ->r.absmin, targ->r.absmax, midpoint);
 VectorScale (midpoint, 0.5, midpoint);

 VectorCopy(midpoint, dest);
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0 || tr.entityNum == targ->s.number)
  return qtrue;



 VectorCopy(midpoint, dest);
 dest[0] += offsetmaxs[0];
 dest[1] += offsetmaxs[1];
 dest[2] += offsetmaxs[2];
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy(midpoint, dest);
 dest[0] += offsetmaxs[0];
 dest[1] += offsetmins[1];
 dest[2] += offsetmaxs[2];
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy(midpoint, dest);
 dest[0] += offsetmins[0];
 dest[1] += offsetmaxs[1];
 dest[2] += offsetmaxs[2];
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy(midpoint, dest);
 dest[0] += offsetmins[0];
 dest[1] += offsetmins[1];
 dest[2] += offsetmaxs[2];
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy(midpoint, dest);
 dest[0] += offsetmaxs[0];
 dest[1] += offsetmaxs[1];
 dest[2] += offsetmins[2];
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy(midpoint, dest);
 dest[0] += offsetmaxs[0];
 dest[1] += offsetmins[1];
 dest[2] += offsetmins[2];
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy(midpoint, dest);
 dest[0] += offsetmins[0];
 dest[1] += offsetmaxs[1];
 dest[2] += offsetmins[2];
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0)
  return qtrue;

 VectorCopy(midpoint, dest);
 dest[0] += offsetmins[0];
 dest[1] += offsetmins[1];
 dest[2] += offsetmins[2];
 trap_Trace(&tr, origin, vec3_origin, vec3_origin, dest, ENTITYNUM_NONE, MASK_SOLID);

 if (tr.fraction == 1.0)
  return qtrue;

 return qfalse;
}
