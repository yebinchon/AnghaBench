
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;


 int ClusterForPoint (int ) ;
 int ClusterVisible (int,int) ;
 int qfalse ;

qboolean ClusterVisibleToPoint( vec3_t point, int cluster ){
 int pointCluster;



 pointCluster = ClusterForPoint( point );
 if ( pointCluster < 0 ) {
  return qfalse;
 }


 return ClusterVisible( pointCluster, cluster );
}
