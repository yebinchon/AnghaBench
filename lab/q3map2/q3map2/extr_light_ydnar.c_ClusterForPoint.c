
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int cluster; } ;


 int PointInLeafNum (int ) ;
 TYPE_1__* bspLeafs ;

int ClusterForPoint( vec3_t point ){
 int leafNum;



 leafNum = PointInLeafNum( point );
 if ( leafNum < 0 ) {
  return -1;
 }


 return bspLeafs[ leafNum ].cluster;
}
