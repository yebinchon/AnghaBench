
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_6__ {int dist; int normal; } ;
typedef TYPE_2__ bspPlane_t ;


 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,size_t) ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* bspPlanes ;
 TYPE_1__* mapplanes ;
 size_t numBSPPlanes ;
 int nummapplanes ;

void EmitPlanes( void ){
 int i;
 bspPlane_t *bp;
 plane_t *mp;



 mp = mapplanes;
 for ( i = 0; i < nummapplanes; i++, mp++ )
 {
  bp = &bspPlanes[ numBSPPlanes ];
  VectorCopy( mp->normal, bp->normal );
  bp->dist = mp->dist;
  numBSPPlanes++;
 }


 Sys_FPrintf( SYS_VRB, "%9d BSP planes\n", numBSPPlanes );
}
