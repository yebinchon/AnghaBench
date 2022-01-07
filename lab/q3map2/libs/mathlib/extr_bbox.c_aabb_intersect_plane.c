
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float vec_t ;
struct TYPE_3__ {float radius; float const* extents; int origin; } ;
typedef TYPE_1__ aabb_t ;


 float const DotProduct (float const*,int ) ;
 float fabs (float const) ;

int aabb_intersect_plane( const aabb_t *aabb, const float *plane ){
 float fDist, fIntersect;


 fDist = DotProduct( plane, aabb->origin ) + plane[3];


 if ( fabs( fDist ) > aabb->radius ) {
  if ( fDist < 0 ) {
   return 2;
  }
  else{
   return 0;
  }
 }


 fIntersect = (vec_t)( fabs( plane[0] * aabb->extents[0] ) + fabs( plane[1] * aabb->extents[1] ) + fabs( plane[2] * aabb->extents[2] ) );

 if ( fabs( fDist ) < fIntersect ) {
  return 1;
 }
 else if ( fDist < 0 ) {
  return 2;
 }
 return 0;
}
