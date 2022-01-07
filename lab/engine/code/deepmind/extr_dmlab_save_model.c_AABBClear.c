
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* extents; scalar_t__* origin; } ;
typedef TYPE_1__ aabb_t ;



__attribute__((used)) static void AABBClear(aabb_t *aabb) {
  aabb->origin[0] = aabb->origin[1] = aabb->origin[2] = 0;
  aabb->extents[0] = aabb->extents[1] = aabb->extents[2] = -1;
}
