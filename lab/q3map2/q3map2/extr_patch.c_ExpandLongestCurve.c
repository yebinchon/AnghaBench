
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 int APPROX_SUBDIVISION ;
 float DotProduct (float*,float*) ;
 int VectorAdd (float*,float*,float*) ;
 int VectorCopy (float*,float*) ;
 scalar_t__ VectorLength (float*) ;
 float VectorNormalize (float*,float*) ;
 int VectorSubtract (float*,float*,float*) ;

__attribute__((used)) static void ExpandLongestCurve( float *longestCurve, vec3_t a, vec3_t b, vec3_t c ){
 int i;
 float t, len;
 vec3_t ab, bc, ac, pt, last, delta;



 VectorSubtract( b, a, ab );
 if ( VectorNormalize( ab, ab ) < 0.125f ) {
  return;
 }
 VectorSubtract( c, b, bc );
 if ( VectorNormalize( bc, bc ) < 0.125f ) {
  return;
 }
 VectorSubtract( c, a, ac );
 if ( VectorNormalize( ac, ac ) < 0.125f ) {
  return;
 }


 if ( DotProduct( ab, bc ) > 0.99f && DotProduct( ab, ac ) > 0.99f ) {
  return;
 }


 VectorSubtract( b, a, ab );
 VectorSubtract( c, b, bc );


 VectorCopy( a, last );
 for ( i = 0, len = 0.0f, t = 0.0f; i < APPROX_SUBDIVISION; i++, t += ( 1.0f / APPROX_SUBDIVISION ) )
 {

  delta[ 0 ] = ( ( 1.0f - t ) * ab[ 0 ] ) + ( t * bc[ 0 ] );
  delta[ 1 ] = ( ( 1.0f - t ) * ab[ 1 ] ) + ( t * bc[ 1 ] );
  delta[ 2 ] = ( ( 1.0f - t ) * ab[ 2 ] ) + ( t * bc[ 2 ] );


  VectorAdd( a, delta, pt );
  VectorSubtract( pt, last, delta );


  len += VectorLength( delta );
  VectorCopy( pt, last );
 }


 if ( len > *longestCurve ) {
  *longestCurve = len;
 }
}
