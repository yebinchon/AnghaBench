
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float vec_t ;
typedef int vec3_t ;
struct TYPE_3__ {float* direction; int const origin; } ;
typedef TYPE_1__ ray_t ;
typedef scalar_t__ qboolean ;


 int CrossProduct (float*,float*,float*) ;
 float DotProduct (float*,float*) ;
 float EPSILON ;
 int VEC_MAX ;
 int VectorSubtract (int const,int const,float*) ;
 scalar_t__ qtrue ;

vec_t ray_intersect_triangle( const ray_t *ray, qboolean bCullBack, const vec3_t vert0, const vec3_t vert1, const vec3_t vert2 ){
 float edge1[3], edge2[3], tvec[3], pvec[3], qvec[3];
 float det,inv_det;
 float u, v;
 vec_t depth = (vec_t)VEC_MAX;


 VectorSubtract( vert1, vert0, edge1 );
 VectorSubtract( vert2, vert0, edge2 );


 CrossProduct( ray->direction, edge2, pvec );


 det = DotProduct( edge1, pvec );

 if ( bCullBack == qtrue ) {
  if ( det < EPSILON ) {
   return depth;
  }


  VectorSubtract( ray->origin, vert0, tvec );


  u = DotProduct( tvec, pvec );
  if ( u < 0.0 || u > det ) {
   return depth;
  }


  CrossProduct( tvec, edge1, qvec );


  v = DotProduct( ray->direction, qvec );
  if ( v < 0.0 || u + v > det ) {
   return depth;
  }


  depth = DotProduct( edge2, qvec );
  inv_det = 1.0f / det;
  depth *= inv_det;


 }
 else
 {

  if ( det > -EPSILON && det < EPSILON ) {
   return depth;
  }
  inv_det = 1.0f / det;


  VectorSubtract( ray->origin, vert0, tvec );


  u = DotProduct( tvec, pvec ) * inv_det;
  if ( u < 0.0 || u > 1.0 ) {
   return depth;
  }


  CrossProduct( tvec, edge1, qvec );


  v = DotProduct( ray->direction, qvec ) * inv_det;
  if ( v < 0.0 || u + v > 1.0 ) {
   return depth;
  }


  depth = DotProduct( edge2, qvec ) * inv_det;
 }
 return depth;
}
