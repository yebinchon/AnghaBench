
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {int numNodes; } ;


 int CM_PointLeafnum_r (int const,int ) ;
 TYPE_1__ cm ;

int CM_PointLeafnum( const vec3_t p ) {
 if ( !cm.numNodes ) {
  return 0;
 }
 return CM_PointLeafnum_r (p, 0);
}
