
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 float DotProduct (float*,float*) ;
 int MAX_EXPANDED_AXIS ;
 int VectorCopy (float*,float*) ;
 float VectorLength (float*) ;
 float VectorNormalize (float*,float*) ;
 int VectorSubtract (float*,float*,float*) ;

__attribute__((used)) static void ExpandMaxIterations( int *maxIterations, int maxError, vec3_t a, vec3_t b, vec3_t c ){
 int i, j;
 vec3_t prev, next, mid, delta, delta2;
 float len, len2;
 int numPoints, iterations;
 vec3_t points[ MAX_EXPANDED_AXIS ];



 numPoints = 3;
 VectorCopy( a, points[ 0 ] );
 VectorCopy( b, points[ 1 ] );
 VectorCopy( c, points[ 2 ] );


 for ( i = 0; i + 2 < numPoints; i += 2 )
 {

  if ( numPoints + 2 >= MAX_EXPANDED_AXIS ) {
   break;
  }


  for ( j = 0; j < 3; j++ )
  {
   prev[ j ] = points[ i + 1 ][ j ] - points[ i ][ j ];
   next[ j ] = points[ i + 2 ][ j ] - points[ i + 1 ][ j ];
   mid[ j ] = ( points[ i ][ j ] + points[ i + 1 ][ j ] * 2.0f + points[ i + 2 ][ j ] ) * 0.25f;
  }


  VectorSubtract( points[ i + 1 ], mid, delta );
  len = VectorLength( delta );
  if ( len < maxError ) {
   continue;
  }


  numPoints += 2;


  for ( j = 0; j < 3; j++ )
  {
   prev[ j ] = 0.5f * ( points[ i ][ j ] + points[ i + 1 ][ j ] );
   next[ j ] = 0.5f * ( points[ i + 1 ][ j ] + points[ i + 2 ][ j ] );
   mid[ j ] = 0.5f * ( prev[ j ] + next[ j ] );
  }


  for ( j = numPoints - 1; j > i + 3; j-- )
   VectorCopy( points[ j - 2 ], points[ j ] );


  VectorCopy( prev, points[ i + 1 ] );
  VectorCopy( mid, points[ i + 2 ] );
  VectorCopy( next, points[ i + 3 ] );


  i -= 2;
 }


 for ( i = 1; i < numPoints; i += 2 )
 {
  for ( j = 0; j < 3; j++ )
  {
   prev[ j ] = 0.5f * ( points[ i ][ j ] + points[ i + 1 ][ j ] );
   next[ j ] = 0.5f * ( points[ i ][ j ] + points[ i - 1 ][ j ] );
   points[ i ][ j ] = 0.5f * ( prev[ j ] + next[ j ] );
  }
 }


 for ( i = 0; i + 2 < numPoints; i++ )
 {

  VectorSubtract( points[ i + 1 ], points[ i ], delta );
  len = VectorNormalize( delta, delta );
  VectorSubtract( points[ i + 2 ], points[ i + 1 ], delta2 );
  len2 = VectorNormalize( delta2, delta2 );


  if ( len < 0.0625f || len2 < 0.0625f || DotProduct( delta, delta2 ) >= 1.0f ) {
   for ( j = i + 1; j + 1 < numPoints; j++ )
    VectorCopy( points[ j + 1 ], points[ j ] );
   numPoints--;
   continue;
  }
 }


 numPoints >>= 1;
 iterations = 0;
 while ( numPoints > 1 )
 {
  numPoints >>= 1;
  iterations++;
 }


 if ( iterations > *maxIterations ) {
  *maxIterations = iterations;
 }
}
