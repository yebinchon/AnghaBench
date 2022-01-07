
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {int * extents; } ;
typedef TYPE_1__ aabb_t ;


 int FLT_MAX ;
 int aabb_clear (TYPE_1__*) ;
 int aabb_extend_by_point (TYPE_1__*,int ) ;

void aabb_for_area( aabb_t *aabb, vec3_t area_tl, vec3_t area_br, int axis ){
 aabb_clear( aabb );
 aabb->extents[axis] = FLT_MAX;
 aabb_extend_by_point( aabb, area_tl );
 aabb_extend_by_point( aabb, area_br );
}
