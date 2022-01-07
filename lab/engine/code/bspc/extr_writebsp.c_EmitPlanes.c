
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_6__ {int type; int dist; int normal; } ;
typedef TYPE_2__ dplane_t ;


 int Error (char*) ;
 size_t MAX_MAP_PLANES ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* dplanes ;
 TYPE_1__* mapplanes ;
 int nummapplanes ;
 size_t numplanes ;

void EmitPlanes (void)
{
 int i;
 dplane_t *dp;
 plane_t *mp;



 mp = mapplanes;
 for (i=0 ; i<nummapplanes ; i++, mp++)
 {
  dp = &dplanes[numplanes];

  VectorCopy ( mp->normal, dp->normal);
  dp->dist = mp->dist;
  dp->type = mp->type;
  numplanes++;
  if (numplanes >= MAX_MAP_PLANES)
   Error("MAX_MAP_PLANES");
 }
}
