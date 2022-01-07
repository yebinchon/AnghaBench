
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int numpoints; float** p; } ;
typedef TYPE_1__ winding_t ;
typedef float* vec3_t ;
typedef scalar_t__ qboolean ;


 TYPE_1__* AllocWinding (int) ;
 int Com_Memcpy (float**,float**,int) ;
 TYPE_1__* CopyWinding (TYPE_1__*) ;
 int CrossProduct (float*,float*,float*) ;
 float DotProduct (float*,float*) ;
 int FreeWinding (TYPE_1__*) ;
 int MAX_HULL_POINTS ;
 float ON_EPSILON ;
 int VectorCopy (float*,float*) ;
 int VectorNormalize2 (float*,float*) ;
 int VectorSubtract (float*,float*,float*) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

void AddWindingToConvexHull( winding_t *w, winding_t **hull, vec3_t normal ) {
 int i, j, k;
 float *p, *copy;
 vec3_t dir;
 float d;
 int numHullPoints, numNew;
 vec3_t hullPoints[MAX_HULL_POINTS];
 vec3_t newHullPoints[MAX_HULL_POINTS];
 vec3_t hullDirs[MAX_HULL_POINTS];
 qboolean hullSide[MAX_HULL_POINTS];
 qboolean outside;

 if ( !*hull ) {
  *hull = CopyWinding( w );
  return;
 }

 numHullPoints = (*hull)->numpoints;
 Com_Memcpy( hullPoints, (*hull)->p, numHullPoints * sizeof(vec3_t) );

 for ( i = 0 ; i < w->numpoints ; i++ ) {
  p = w->p[i];


  for ( j = 0 ; j < numHullPoints ; j++ ) {
   k = ( j + 1 ) % numHullPoints;

   VectorSubtract( hullPoints[k], hullPoints[j], dir );
   VectorNormalize2( dir, dir );
   CrossProduct( normal, dir, hullDirs[j] );
  }

  outside = qfalse;
  for ( j = 0 ; j < numHullPoints ; j++ ) {
   VectorSubtract( p, hullPoints[j], dir );
   d = DotProduct( dir, hullDirs[j] );
   if ( d >= ON_EPSILON ) {
    outside = qtrue;
   }
   if ( d >= -ON_EPSILON ) {
    hullSide[j] = qtrue;
   } else {
    hullSide[j] = qfalse;
   }
  }


  if ( !outside ) {
   continue;
  }


  for ( j = 0 ; j < numHullPoints ; j++ ) {
   if ( !hullSide[ j % numHullPoints ] && hullSide[ (j + 1) % numHullPoints ] ) {
    break;
   }
  }
  if ( j == numHullPoints ) {
   continue;
  }


  VectorCopy( p, newHullPoints[0] );
  numNew = 1;


  j = (j+1)%numHullPoints;
  for ( k = 0 ; k < numHullPoints ; k++ ) {
   if ( hullSide[ (j+k) % numHullPoints ] && hullSide[ (j+k+1) % numHullPoints ] ) {
    continue;
   }
   copy = hullPoints[ (j+k+1) % numHullPoints ];
   VectorCopy( copy, newHullPoints[numNew] );
   numNew++;
  }

  numHullPoints = numNew;
  Com_Memcpy( hullPoints, newHullPoints, numHullPoints * sizeof(vec3_t) );
 }

 FreeWinding( *hull );
 w = AllocWinding( numHullPoints );
 w->numpoints = numHullPoints;
 *hull = w;
 Com_Memcpy( w->p, hullPoints, numHullPoints * sizeof(vec3_t) );
}
