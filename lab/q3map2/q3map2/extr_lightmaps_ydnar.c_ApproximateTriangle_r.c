
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int rawLightmap_t ;
typedef scalar_t__ qboolean ;
struct TYPE_9__ {float** lightmap; } ;
typedef TYPE_1__ bspDrawVert_t ;


 scalar_t__ ApproximateLuxel (int *,TYPE_1__*) ;
 int LerpDrawVert (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int VectorCopy (TYPE_1__**,TYPE_1__**) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 float sqrt (float) ;
 float subdivideThreshold ;

__attribute__((used)) static qboolean ApproximateTriangle_r( rawLightmap_t *lm, bspDrawVert_t *dv[ 3 ] ){
 bspDrawVert_t mid, *dv2[ 3 ];
 int max;



 if ( ApproximateLuxel( lm, dv[ 0 ] ) == qfalse ) {
  return qfalse;
 }
 if ( ApproximateLuxel( lm, dv[ 1 ] ) == qfalse ) {
  return qfalse;
 }
 if ( ApproximateLuxel( lm, dv[ 2 ] ) == qfalse ) {
  return qfalse;
 }


 {
  int i;
  float dx, dy, dist, maxDist;



  max = -1;
  maxDist = 0;
  for ( i = 0; i < 3; i++ )
  {
   dx = dv[ i ]->lightmap[ 0 ][ 0 ] - dv[ ( i + 1 ) % 3 ]->lightmap[ 0 ][ 0 ];
   dy = dv[ i ]->lightmap[ 0 ][ 1 ] - dv[ ( i + 1 ) % 3 ]->lightmap[ 0 ][ 1 ];
   dist = sqrt( ( dx * dx ) + ( dy * dy ) );
   if ( dist > maxDist ) {
    maxDist = dist;
    max = i;
   }
  }


  if ( i < 0 || maxDist < subdivideThreshold ) {
   return qtrue;
  }
 }


 LerpDrawVert( dv[ max ], dv[ ( max + 1 ) % 3 ], &mid );
 if ( ApproximateLuxel( lm, &mid ) == qfalse ) {
  return qfalse;
 }


 VectorCopy( dv, dv2 );
 dv2[ max ] = &mid;
 if ( ApproximateTriangle_r( lm, dv2 ) == qfalse ) {
  return qfalse;
 }


 VectorCopy( dv, dv2 );
 dv2[ ( max + 1 ) % 3 ] = &mid;
 return ApproximateTriangle_r( lm, dv2 );
}
