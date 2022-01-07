
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_6__ {int facenum; int * start; } ;
typedef TYPE_2__ aas_reachability_t ;
struct TYPE_7__ {int (* Print ) (int ,char*,int) ;} ;
struct TYPE_5__ {int member_2; int member_1; int member_0; } ;


 int AAS_BSPModelMinsMaxsOrigin (int,int *,int *,int *,int *) ;
 int AAS_OriginOfMoverWithModelNum (int,int *) ;
 int PRT_MESSAGE ;
 int VectorAdd (int *,int *,int *) ;
 int VectorMA (int *,double,int *,int *) ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*,int) ;

void MoverBottomCenter(aas_reachability_t *reach, vec3_t bottomcenter)
{
 int modelnum;
 vec3_t mins, maxs, origin, mids;
 vec3_t angles = {0, 0, 0};

 modelnum = reach->facenum & 0x0000FFFF;

 AAS_BSPModelMinsMaxsOrigin(modelnum, angles, mins, maxs, origin);

 if (!AAS_OriginOfMoverWithModelNum(modelnum, origin))
 {
  botimport.Print(PRT_MESSAGE, "no entity with model %d\n", modelnum);
 }

 VectorAdd(mins, maxs, mids);
 VectorMA(origin, 0.5, mids, bottomcenter);
 bottomcenter[2] = reach->start[2];
}
