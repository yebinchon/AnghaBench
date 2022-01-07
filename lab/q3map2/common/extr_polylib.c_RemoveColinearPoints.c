
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int vec3_t ;
typedef int p ;


 double DotProduct (int ,int ) ;
 int MAX_POINTS_ON_WINDING ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int c_removed ;
 int memcpy (int *,int *,int) ;
 int numthreads ;

void RemoveColinearPoints( winding_t *w ){
 int i, j, k;
 vec3_t v1, v2;
 int nump;
 vec3_t p[MAX_POINTS_ON_WINDING];

 nump = 0;
 for ( i = 0 ; i < w->numpoints ; i++ )
 {
  j = ( i + 1 ) % w->numpoints;
  k = ( i + w->numpoints - 1 ) % w->numpoints;
  VectorSubtract( w->p[j], w->p[i], v1 );
  VectorSubtract( w->p[i], w->p[k], v2 );
  VectorNormalize( v1,v1 );
  VectorNormalize( v2,v2 );
  if ( DotProduct( v1, v2 ) < 0.999 ) {
   VectorCopy( w->p[i], p[nump] );
   nump++;
  }
 }

 if ( nump == w->numpoints ) {
  return;
 }

 if ( numthreads == 1 ) {
  c_removed += w->numpoints - nump;
 }
 w->numpoints = nump;
 memcpy( w->p, p, nump * sizeof( p[0] ) );
}
