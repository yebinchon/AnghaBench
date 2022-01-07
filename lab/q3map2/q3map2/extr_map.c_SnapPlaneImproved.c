
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vec_t ;
typedef int* vec3_t ;


 scalar_t__ DotProduct (int*,int*) ;
 scalar_t__ Q_rint (scalar_t__) ;
 scalar_t__ SnapNormal (int*) ;
 int VectorAdd (int*,int* const,int*) ;
 int VectorClear (int*) ;
 scalar_t__ VectorIsOnAxis (int*) ;
 scalar_t__ distanceEpsilon ;

void SnapPlaneImproved( vec3_t normal, vec_t *dist, int numPoints, const vec3_t *points ){
 int i;
 vec3_t center;
 vec_t distNearestInt;

 if ( SnapNormal( normal ) ) {
  if ( numPoints > 0 ) {

   VectorClear( center );
   for ( i = 0; i < numPoints; i++ )
   {
    VectorAdd( center, points[i], center );
   }
   for ( i = 0; i < 3; i++ ) { center[i] = center[i] / numPoints; }
   *dist = DotProduct( normal, center );
  }
 }

 if ( VectorIsOnAxis( normal ) ) {


  distNearestInt = Q_rint( *dist );
  if ( -distanceEpsilon < *dist - distNearestInt && *dist - distNearestInt < distanceEpsilon ) {
   *dist = distNearestInt;
  }
 }
}
