
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_3__ {int extents; } ;
typedef TYPE_1__ aabb_t ;


 int VectorAdd (int ,int ,int ) ;

void aabb_extend_by_vec3( aabb_t *aabb, vec3_t extension ){
 VectorAdd( aabb->extents, extension, aabb->extents );
}
