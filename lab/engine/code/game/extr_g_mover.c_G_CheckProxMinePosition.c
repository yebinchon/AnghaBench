
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_9__ {int fraction; scalar_t__ startsolid; } ;
typedef TYPE_3__ trace_t ;
typedef int qboolean ;
struct TYPE_7__ {int trBase; } ;
struct TYPE_8__ {int number; TYPE_1__ pos; } ;
struct TYPE_10__ {TYPE_2__ s; int movedir; } ;
typedef TYPE_4__ gentity_t ;


 int MASK_SOLID ;
 int VectorMA (int ,int,int ,int ) ;
 int qfalse ;
 int qtrue ;
 int trap_Trace (TYPE_3__*,int ,int *,int *,int ,int ,int ) ;

qboolean G_CheckProxMinePosition( gentity_t *check ) {
 vec3_t start, end;
 trace_t tr;

 VectorMA(check->s.pos.trBase, 0.125, check->movedir, start);
 VectorMA(check->s.pos.trBase, 2, check->movedir, end);
 trap_Trace( &tr, start, ((void*)0), ((void*)0), end, check->s.number, MASK_SOLID );

 if (tr.startsolid || tr.fraction < 1)
  return qfalse;

 return qtrue;
}
