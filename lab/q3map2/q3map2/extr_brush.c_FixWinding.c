
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;
typedef int qboolean ;


 float DEGENERATE_EPSILON ;
 int SnapWeldVector (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean FixWinding( winding_t *w ){
 qboolean valid = qtrue;
 int i, j, k;
 vec3_t vec;
 float dist;



 if ( !w ) {
  return qfalse;
 }


 for ( i = 0; i < w->numpoints; i++ )
 {

  if ( w->numpoints == 3 ) {
   return valid;
  }


  j = ( i + 1 ) % w->numpoints;


  VectorSubtract( w->p[ i ], w->p[ j ], vec );
  dist = VectorLength( vec );
  if ( dist < DEGENERATE_EPSILON ) {
   valid = qfalse;



   SnapWeldVector( w->p[ i ], w->p[ j ], vec );
   VectorCopy( vec, w->p[ i ] );




   for ( k = i + 2; k < w->numpoints; k++ )
   {
    VectorCopy( w->p[ k ], w->p[ k - 1 ] );
   }
   w->numpoints--;
  }
 }


 if ( w->numpoints < 3 ) {
  valid = qfalse;
 }
 return valid;
}
