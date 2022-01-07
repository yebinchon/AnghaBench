
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef scalar_t__ vec_t ;
typedef int vec3_t ;
typedef scalar_t__ qboolean ;


 scalar_t__ DotProduct (int ,int ) ;
 scalar_t__ ON_EPSILON ;
 int SIDE_BACK ;
 int SIDE_CROSS ;
 int SIDE_FRONT ;
 int SIDE_ON ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

int WindingOnPlaneSide( winding_t *w, vec3_t normal, vec_t dist ){
 qboolean front, back;
 int i;
 vec_t d;

 front = qfalse;
 back = qfalse;
 for ( i = 0 ; i < w->numpoints ; i++ )
 {
  d = DotProduct( w->p[i], normal ) - dist;
  if ( d < -ON_EPSILON ) {
   if ( front ) {
    return SIDE_CROSS;
   }
   back = qtrue;
   continue;
  }
  if ( d > ON_EPSILON ) {
   if ( back ) {
    return SIDE_CROSS;
   }
   front = qtrue;
   continue;
  }
 }

 if ( back ) {
  return SIDE_BACK;
 }
 if ( front ) {
  return SIDE_FRONT;
 }
 return SIDE_ON;
}
