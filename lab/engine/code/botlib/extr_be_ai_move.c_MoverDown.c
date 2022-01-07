
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_4__ {int facenum; scalar_t__* start; } ;
typedef TYPE_1__ aas_reachability_t ;
struct TYPE_5__ {int (* Print ) (int ,char*,int) ;} ;


 int AAS_BSPModelMinsMaxsOrigin (int,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int AAS_OriginOfMoverWithModelNum (int,scalar_t__*) ;
 int PRT_MESSAGE ;
 TYPE_2__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*,int) ;

int MoverDown(aas_reachability_t *reach)
{
 int modelnum;
 vec3_t mins, maxs, origin;
 vec3_t angles = {0, 0, 0};

 modelnum = reach->facenum & 0x0000FFFF;

 AAS_BSPModelMinsMaxsOrigin(modelnum, angles, mins, maxs, origin);

 if (!AAS_OriginOfMoverWithModelNum(modelnum, origin))
 {
  botimport.Print(PRT_MESSAGE, "no entity with model %d\n", modelnum);
  return qfalse;
 }

 if (origin[2] + maxs[2] < reach->start[2]) return qtrue;
 return qfalse;
}
