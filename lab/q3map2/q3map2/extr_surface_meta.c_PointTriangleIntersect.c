
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;
typedef float* vec3_t ;
typedef int qboolean ;


 float DotProduct (float*,float*) ;
 float MAX_OUTSIDE_EPSILON ;
 float MIN_OUTSIDE_EPSILON ;
 int VectorSubtract (float*,float*,float*) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean PointTriangleIntersect( vec3_t pt, vec4_t plane, vec3_t a, vec3_t b, vec3_t c, vec3_t bary ){
 vec3_t u, v, w;
 float uu, uv, vv, wu, wv, d;



 VectorSubtract( b, a, u );
 VectorSubtract( c, a, v );
 VectorSubtract( pt, a, w );


 uu = DotProduct( u, u );
 uv = DotProduct( u, v );
 vv = DotProduct( v, v );
 wu = DotProduct( w, u );
 wv = DotProduct( w, v );
 d = uv * uv - uu * vv;


 bary[ 1 ] = ( uv * wv - vv * wu ) / d;
 if ( bary[ 1 ] < MIN_OUTSIDE_EPSILON || bary[ 1 ] > MAX_OUTSIDE_EPSILON ) {
  return qfalse;
 }
 bary[ 2 ] = ( uv * wv - uu * wv ) / d;
 if ( bary[ 2 ] < MIN_OUTSIDE_EPSILON || bary[ 2 ] > MAX_OUTSIDE_EPSILON ) {
  return qfalse;
 }
 bary[ 0 ] = 1.0f - ( bary[ 1 ] + bary[ 2 ] );


 return qtrue;
}
