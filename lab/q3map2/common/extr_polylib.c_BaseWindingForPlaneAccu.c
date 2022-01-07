
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double** p; int numpoints; } ;
typedef TYPE_1__ winding_accu_t ;
typedef double vec_t ;
typedef double vec_accu_t ;
typedef scalar_t__* vec3_t ;
typedef double* vec3_accu_t ;


 TYPE_1__* AllocWindingAccu (int) ;
 int CrossProductAccu (double*,double*,double*) ;
 int Error (char*) ;
 scalar_t__ MAX_WORLD_COORD ;
 int VectorAddAccu (double*,double*,double*) ;
 int VectorCopyRegularToAccu (scalar_t__*,double*) ;
 int VectorScaleAccu (double*,double,double*) ;
 int VectorSubtractAccu (double*,double*,double*) ;
 scalar_t__ fabs (scalar_t__) ;

winding_accu_t *BaseWindingForPlaneAccu( vec3_t normal, vec_t dist ){
 int x, i;
 vec_t max, v;
 vec3_accu_t vright, vup, org, normalAccu;
 winding_accu_t *w;




 max = 0.56;

 x = -1;
 for ( i = 0; i < 3; i++ ) {
  v = (vec_t) fabs( normal[i] );
  if ( v > max ) {
   x = i;
   max = v;
  }
 }
 if ( x == -1 ) {
  Error( "BaseWindingForPlaneAccu: no dominant axis found because normal is too short" );
 }

 switch ( x ) {
 case 0:
 case 1:
  vright[0] = (vec_accu_t) -normal[1];
  vright[1] = (vec_accu_t) normal[0];
  vright[2] = 0;
  break;
 case 2:
  vright[0] = 0;
  vright[1] = (vec_accu_t) -normal[2];
  vright[2] = (vec_accu_t) normal[1];
  break;
 }
 VectorScaleAccu( vright, ( (vec_accu_t) MAX_WORLD_COORD ) * 4.0, vright );






 VectorCopyRegularToAccu( normal, normalAccu );
 CrossProductAccu( normalAccu, vright, vup );



 VectorScaleAccu( normalAccu, (vec_accu_t) dist, org );
 w = AllocWindingAccu( 4 );

 VectorSubtractAccu( org, vright, w->p[0] );
 VectorAddAccu( w->p[0], vup, w->p[0] );

 VectorAddAccu( org, vright, w->p[1] );
 VectorAddAccu( w->p[1], vup, w->p[1] );

 VectorAddAccu( org, vright, w->p[2] );
 VectorSubtractAccu( w->p[2], vup, w->p[2] );

 VectorSubtractAccu( org, vright, w->p[3] );
 VectorSubtractAccu( w->p[3], vup, w->p[3] );

 w->numpoints = 4;

 return w;
}
