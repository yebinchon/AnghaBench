
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_accu_t ;
typedef scalar_t__ vec_accu_t ;
typedef int vec3_accu_t ;
typedef scalar_t__ qboolean ;


 scalar_t__ DEGENERATE_EPSILON ;
 int Error (char*) ;
 int SnapWeldVectorAccu (int ,int ,int ) ;
 int VectorCopyAccu (int ,int ) ;
 scalar_t__ VectorLengthAccu (int ) ;
 int VectorSubtractAccu (int ,int ,int ) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

qboolean FixWindingAccu( winding_accu_t *w ){
 int i, j, k;
 vec3_accu_t vec;
 vec_accu_t dist;
 qboolean done, altered;

 if ( w == ((void*)0) ) {
  Error( "FixWindingAccu: NULL argument" );
 }

 altered = qfalse;

 while ( qtrue )
 {
  if ( w->numpoints < 2 ) {
   break;
  }
  done = qtrue;
  for ( i = 0; i < w->numpoints; i++ )
  {
   j = ( ( ( i + 1 ) == w->numpoints ) ? 0 : ( i + 1 ) );

   VectorSubtractAccu( w->p[i], w->p[j], vec );
   dist = VectorLengthAccu( vec );
   if ( dist < DEGENERATE_EPSILON ) {





    SnapWeldVectorAccu( w->p[i], w->p[j], vec );
    VectorCopyAccu( vec, w->p[i] );
    for ( k = j + 1; k < w->numpoints; k++ )
    {
     VectorCopyAccu( w->p[k], w->p[k - 1] );
    }
    w->numpoints--;
    altered = qtrue;






    done = qfalse;
    break;
   }
  }
  if ( done ) {
   break;
  }
 }

 return altered;
}
