
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int direction; int origin; } ;
typedef TYPE_1__ ray_t ;


 int VectorCopy (int const,int ) ;

void ray_construct_for_vec3( ray_t *ray, const vec3_t origin, const vec3_t direction ){
 VectorCopy( origin, ray->origin );
 VectorCopy( direction, ray->direction );
}
