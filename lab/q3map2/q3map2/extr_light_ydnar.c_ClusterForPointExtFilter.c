
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int ClusterForPointExt (int ,float) ;
 scalar_t__ ClusterVisible (int,int) ;

int ClusterForPointExtFilter( vec3_t point, float epsilon, int numClusters, int *clusters ){
 int i, cluster;



 cluster = ClusterForPointExt( point, epsilon );


 if ( cluster < 0 || numClusters <= 0 || clusters == ((void*)0) ) {
  return cluster;
 }


 for ( i = 0; i < numClusters; i++ )
 {
  if ( cluster == clusters[ i ] || ClusterVisible( cluster, clusters[ i ] ) ) {
   return cluster;
  }
 }


 return -1;
}
