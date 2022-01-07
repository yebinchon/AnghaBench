
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {int numclusters; TYPE_3__* clusters; TYPE_2__* portals; TYPE_1__* areasettings; int initialized; } ;
struct TYPE_7__ {scalar_t__ numreachabilityareas; } ;
struct TYPE_6__ {int frontcluster; int* clusterareanum; } ;
struct TYPE_5__ {int cluster; int clusterareanum; } ;


 int AAS_AreaReachability (int) ;
 int AAS_PointAreaNum (int ) ;
 TYPE_4__ aasworld ;

int AAS_PointReachabilityAreaIndex( vec3_t origin )
{
 int areanum, cluster, i, index;

 if (!aasworld.initialized)
  return 0;

 if ( !origin )
 {
  index = 0;
  for (i = 0; i < aasworld.numclusters; i++)
  {
   index += aasworld.clusters[i].numreachabilityareas;
  }
  return index;
 }

 areanum = AAS_PointAreaNum( origin );
 if ( !areanum || !AAS_AreaReachability(areanum) )
  return 0;
 cluster = aasworld.areasettings[areanum].cluster;
 areanum = aasworld.areasettings[areanum].clusterareanum;
 if (cluster < 0)
 {
  cluster = aasworld.portals[-cluster].frontcluster;
  areanum = aasworld.portals[-cluster].clusterareanum[0];
 }

 index = 0;
 for (i = 0; i < cluster; i++)
 {
  index += aasworld.clusters[i].numreachabilityareas;
 }
 index += areanum;
 return index;
}
