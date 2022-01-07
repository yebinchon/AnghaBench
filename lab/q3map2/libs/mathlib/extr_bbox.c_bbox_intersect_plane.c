
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
struct TYPE_4__ {scalar_t__ radius; scalar_t__* extents; int origin; } ;
struct TYPE_5__ {int * axes; TYPE_1__ aabb; } ;
typedef TYPE_2__ bbox_t ;


 scalar_t__ DotProduct (scalar_t__ const*,int ) ;
 scalar_t__ fabs (scalar_t__) ;

int bbox_intersect_plane( const bbox_t *bbox, const vec_t* plane ){
 vec_t fDist, fIntersect;


 fDist = DotProduct( plane, bbox->aabb.origin ) + plane[3];


 if ( fabs( fDist ) > bbox->aabb.radius ) {
  if ( fDist < 0 ) {
   return 2;
  }
  else{
   return 0;
  }
 }


 fIntersect = (vec_t)( fabs( bbox->aabb.extents[0] * DotProduct( plane, bbox->axes[0] ) )
        + fabs( bbox->aabb.extents[1] * DotProduct( plane, bbox->axes[1] ) )
        + fabs( bbox->aabb.extents[2] * DotProduct( plane, bbox->axes[2] ) ) );

 if ( fabs( fDist ) < fIntersect ) {
  return 1;
 }
 else if ( fDist < 0 ) {
  return 2;
 }
 return 0;
}
