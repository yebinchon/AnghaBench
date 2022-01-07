
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float vec_t ;
typedef int vec3_t ;
struct TYPE_3__ {int direction; int origin; } ;
typedef TYPE_1__ ray_t ;


 float DotProduct (int ,int ) ;
 int VEC_MAX ;
 float VectorLength (int ) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorSubtract (int const,int ,int ) ;

vec_t ray_intersect_point( const ray_t *ray, const vec3_t point, vec_t epsilon, vec_t divergence ){
 vec3_t displacement;
 vec_t depth;


 VectorSubtract( point, ray->origin, displacement );

 depth = DotProduct( displacement, ray->direction );
 if ( depth < 0.0f ) {
  return (vec_t)VEC_MAX;
 }

 VectorMA( ray->origin, depth, ray->direction, displacement );

 VectorSubtract( point, displacement, displacement );

 if ( VectorLength( displacement ) - ( epsilon + ( depth * divergence ) ) > 0.0f ) {
  return (vec_t)VEC_MAX;
 }
 return depth;
}
