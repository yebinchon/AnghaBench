
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float vec_t ;
typedef float* vec3_t ;
struct TYPE_5__ {float* origin; float* direction; } ;
typedef TYPE_1__ ray_t ;
struct TYPE_6__ {float const* origin; float const* extents; } ;
typedef TYPE_2__ aabb_t ;


 float DotProduct (float*,float const*) ;
 char LEFT ;
 char MIDDLE ;
 int NUMDIM ;
 char RIGHT ;
 int VectorSubtract (float*,float const*,float*) ;
 double fabs (float) ;

int aabb_intersect_ray( const aabb_t *aabb, const ray_t *ray, vec_t *dist ){
 int inside = 1;
 char quadrant[NUMDIM];
 register int i;
 int whichPlane;
 double maxT[NUMDIM];
 double candidatePlane[NUMDIM];
 vec3_t coord, segment;

 const float *origin = ray->origin;
 const float *direction = ray->direction;



 for ( i = 0; i < NUMDIM; i++ )
 {
  if ( origin[i] < ( aabb->origin[i] - aabb->extents[i] ) ) {
   quadrant[i] = LEFT;
   candidatePlane[i] = ( aabb->origin[i] - aabb->extents[i] );
   inside = 0;
  }
  else if ( origin[i] > ( aabb->origin[i] + aabb->extents[i] ) ) {
   quadrant[i] = RIGHT;
   candidatePlane[i] = ( aabb->origin[i] + aabb->extents[i] );
   inside = 0;
  }
  else
  {
   quadrant[i] = MIDDLE;
  }
 }


 if ( inside == 1 ) {
  *dist = 0.0f;
  return 1;
 }



 for ( i = 0; i < NUMDIM; i++ )
 {
  if ( quadrant[i] != MIDDLE && direction[i] != 0. ) {
   maxT[i] = ( candidatePlane[i] - origin[i] ) / direction[i];
  }
  else{
   maxT[i] = -1.;
  }
 }


 whichPlane = 0;
 for ( i = 1; i < NUMDIM; i++ )
  if ( maxT[whichPlane] < maxT[i] ) {
   whichPlane = i;
  }


 if ( maxT[whichPlane] < 0. ) {
  return 0;
 }
 for ( i = 0; i < NUMDIM; i++ )
 {
  if ( whichPlane != i ) {
   coord[i] = (vec_t)( origin[i] + maxT[whichPlane] * direction[i] );
   if ( fabs( coord[i] - aabb->origin[i] ) > aabb->extents[i] ) {
    return 0;
   }
  }
  else
  {
   coord[i] = (vec_t)candidatePlane[i];
  }
 }

 VectorSubtract( coord, origin, segment );
 *dist = DotProduct( segment, direction );

 return 1;
}
