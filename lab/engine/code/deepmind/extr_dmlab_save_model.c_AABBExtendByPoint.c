
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef scalar_t__* vec3_t ;
struct TYPE_3__ {scalar_t__* origin; scalar_t__* extents; } ;
typedef TYPE_1__ aabb_t ;


 scalar_t__ fabs (scalar_t__) ;

__attribute__((used)) static void AABBExtendByPoint(aabb_t *aabb, const vec3_t point) {
  vec_t min, max, displacement;
  for (int i = 0; i < 3; ++i) {
    displacement = point[i] - aabb->origin[i];
    if (fabs(displacement) > aabb->extents[i]) {
      if (aabb->extents[i] < 0) {
        min = max = point[i];
      } else if (displacement > 0) {
        min = aabb->origin[i] - aabb->extents[i];
        max = aabb->origin[i] + displacement;
      } else {
        max = aabb->origin[i] + aabb->extents[i];
        min = aabb->origin[i] + displacement;
      }
      aabb->origin[i] = (min + max) * 0.5f;
      aabb->extents[i] = max - aabb->origin[i];
    }
  }
}
