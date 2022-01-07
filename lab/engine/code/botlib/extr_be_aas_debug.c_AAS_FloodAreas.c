
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int numareas; } ;


 int AAS_AreaCluster (int) ;
 int AAS_FloodAreas_r (int,int,int*) ;
 int AAS_PointAreaNum (int ) ;
 int FreeMemory (int*) ;
 scalar_t__ GetClearedMemory (int) ;
 TYPE_1__ aasworld ;

void AAS_FloodAreas(vec3_t origin)
{
 int areanum, cluster, *done;

 done = (int *) GetClearedMemory(aasworld.numareas * sizeof(int));
 areanum = AAS_PointAreaNum(origin);
 cluster = AAS_AreaCluster(areanum);
 AAS_FloodAreas_r(areanum, cluster, done);
 FreeMemory(done);
}
