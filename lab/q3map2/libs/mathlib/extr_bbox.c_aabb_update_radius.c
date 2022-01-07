
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extents; int radius; } ;
typedef TYPE_1__ aabb_t ;


 int VectorLength (int ) ;

void aabb_update_radius( aabb_t *aabb ){
 aabb->radius = VectorLength( aabb->extents );
}
