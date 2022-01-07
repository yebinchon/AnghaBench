
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int vec4_t ;
typedef int vec3_t ;
typedef int surfaceInfo_t ;
typedef int rawLightmap_t ;
struct TYPE_9__ {float** lightmap; } ;
typedef TYPE_1__ bspDrawVert_t ;


 int LerpDrawVert (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int MapSingleLuxel (int *,int *,TYPE_1__*,int ,int,int *,int *) ;
 int VectorCopy (TYPE_1__**,TYPE_1__**) ;
 float subdivideThreshold ;

__attribute__((used)) static void MapTriangle_r( rawLightmap_t *lm, surfaceInfo_t *info, bspDrawVert_t *dv[ 3 ], vec4_t plane, vec3_t stv[ 3 ], vec3_t ttv[ 3 ] ){
 bspDrawVert_t mid, *dv2[ 3 ];
 int max;
 {
  int i;
  float *a, *b, dx, dy, dist, maxDist;



  max = -1;
  maxDist = 0;
  for ( i = 0; i < 3; i++ )
  {

   a = dv[ i ]->lightmap[ 0 ];
   b = dv[ ( i + 1 ) % 3 ]->lightmap[ 0 ];


   dx = a[ 0 ] - b[ 0 ];
   dy = a[ 1 ] - b[ 1 ];
   dist = ( dx * dx ) + ( dy * dy );


   if ( dist > maxDist ) {
    maxDist = dist;
    max = i;
   }
  }


  if ( max < 0 || maxDist <= subdivideThreshold ) {
   return;
  }
 }


 LerpDrawVert( dv[ max ], dv[ ( max + 1 ) % 3 ], &mid );
 MapSingleLuxel( lm, info, &mid, plane, 1, stv, ttv );





 VectorCopy( dv, dv2 );
 dv2[ max ] = &mid;
 MapTriangle_r( lm, info, dv2, plane, stv, ttv );


 VectorCopy( dv, dv2 );
 dv2[ ( max + 1 ) % 3 ] = &mid;
 MapTriangle_r( lm, info, dv2, plane, stv, ttv );
}
