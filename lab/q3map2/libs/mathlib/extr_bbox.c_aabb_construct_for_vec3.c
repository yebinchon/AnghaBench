
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int extents; int origin; } ;
typedef TYPE_1__ aabb_t ;


 int VectorMid (int const,int const,int ) ;
 int VectorSubtract (int const,int ,int ) ;

void aabb_construct_for_vec3( aabb_t *aabb, const vec3_t min, const vec3_t max ){
 VectorMid( min, max, aabb->origin );
 VectorSubtract( max, aabb->origin, aabb->extents );
}
