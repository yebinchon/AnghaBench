
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float* plane; } ;


 float DotProduct (float*,float*) ;
 float PLANE_TRI_EPSILON ;
 int SIDE_BACK ;
 int SIDE_FRONT ;
 int SIDE_ON ;
 TYPE_1__* planes ;

__attribute__((used)) static int CM_PointOnPlaneSide( float *p, int planeNum ) {
 float *plane;
 float d;

 if ( planeNum == -1 ) {
  return SIDE_ON;
 }
 plane = planes[ planeNum ].plane;

 d = DotProduct( p, plane ) - plane[3];

 if ( d > PLANE_TRI_EPSILON ) {
  return SIDE_FRONT;
 }

 if ( d < -PLANE_TRI_EPSILON ) {
  return SIDE_BACK;
 }

 return SIDE_ON;
}
