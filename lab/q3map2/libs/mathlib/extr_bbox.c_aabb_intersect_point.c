
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_3__ {scalar_t__* extents; scalar_t__* origin; } ;
typedef TYPE_1__ aabb_t ;


 scalar_t__ fabs (scalar_t__) ;

int aabb_intersect_point( const aabb_t *aabb, const vec3_t point ){
 int i;
 for ( i = 0; i < 3; i++ )
  if ( fabs( point[i] - aabb->origin[i] ) >= aabb->extents[i] ) {
   return 0;
  }
 return 1;
}
