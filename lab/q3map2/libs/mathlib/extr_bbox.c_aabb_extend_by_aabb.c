
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
struct TYPE_4__ {scalar_t__* origin; scalar_t__* extents; } ;
typedef TYPE_1__ aabb_t ;


 scalar_t__ fabs (scalar_t__) ;

void aabb_extend_by_aabb( aabb_t *aabb, const aabb_t *aabb_src ){
 int i;
 vec_t min, max, displacement, difference;
 for ( i = 0; i < 3; i++ )
 {
  displacement = aabb_src->origin[i] - aabb->origin[i];
  difference = aabb_src->extents[i] - aabb->extents[i];
  if ( aabb->extents[i] < 0
    || difference >= fabs( displacement ) ) {

   aabb->extents[i] = aabb_src->extents[i];
   aabb->origin[i] = aabb_src->origin[i];
  }
  else if ( aabb_src->extents[i] < 0
      || -difference >= fabs( displacement ) ) {

   continue;
  }
  else
  {

   if ( displacement > 0 ) {
    min = aabb->origin[i] - aabb->extents[i];
    max = aabb_src->origin[i] + aabb_src->extents[i];
   }
   else
   {
    min = aabb_src->origin[i] - aabb_src->extents[i];
    max = aabb->origin[i] + aabb->extents[i];
   }
   aabb->origin[i] = ( min + max ) * 0.5f;
   aabb->extents[i] = max - aabb->origin[i];
  }
 }
}
