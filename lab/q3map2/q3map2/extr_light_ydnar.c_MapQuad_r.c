
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec4_t ;
typedef int vec3_t ;
typedef int surfaceInfo_t ;
typedef int rawLightmap_t ;
struct TYPE_7__ {float** lightmap; } ;
typedef TYPE_1__ bspDrawVert_t ;


 int LerpDrawVert (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int MapSingleLuxel (int *,int *,TYPE_1__*,int ,int,int *,int *) ;
 float subdivideThreshold ;

__attribute__((used)) static void MapQuad_r( rawLightmap_t *lm, surfaceInfo_t *info, bspDrawVert_t *dv[ 4 ], vec4_t plane, vec3_t stv[ 4 ], vec3_t ttv[ 4 ] ){
 bspDrawVert_t mid[ 2 ], *dv2[ 4 ];
 int max;



 {
  int i;
  float *a, *b, dx, dy, dist, maxDist;



  max = -1;
  maxDist = 0;
  for ( i = 0; i < 4; i++ )
  {

   a = dv[ i ]->lightmap[ 0 ];
   b = dv[ ( i + 1 ) % 4 ]->lightmap[ 0 ];


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


 max &= 1;


 LerpDrawVert( dv[ max ], dv[ ( max + 1 ) % 4 ], &mid[ 0 ] );
 LerpDrawVert( dv[ max + 2 ], dv[ ( max + 3 ) % 4 ], &mid[ 1 ] );


 MapSingleLuxel( lm, info, &mid[ 0 ], plane, 1, stv, ttv );
 MapSingleLuxel( lm, info, &mid[ 1 ], plane, 1, stv, ttv );


 if ( max == 0 ) {

  dv2[ 0 ] = dv[ 0 ];
  dv2[ 1 ] = &mid[ 0 ];
  dv2[ 2 ] = &mid[ 1 ];
  dv2[ 3 ] = dv[ 3 ];
  MapQuad_r( lm, info, dv2, plane, stv, ttv );


  dv2[ 0 ] = &mid[ 0 ];
  dv2[ 1 ] = dv[ 1 ];
  dv2[ 2 ] = dv[ 2 ];
  dv2[ 3 ] = &mid[ 1 ];
  MapQuad_r( lm, info, dv2, plane, stv, ttv );
 }


 else
 {

  dv2[ 0 ] = dv[ 0 ];
  dv2[ 1 ] = dv[ 1 ];
  dv2[ 2 ] = &mid[ 0 ];
  dv2[ 3 ] = &mid[ 1 ];
  MapQuad_r( lm, info, dv2, plane, stv, ttv );


  dv2[ 0 ] = &mid[ 1 ];
  dv2[ 1 ] = &mid[ 0 ];
  dv2[ 2 ] = dv[ 2 ];
  dv2[ 3 ] = dv[ 3 ];
  MapQuad_r( lm, info, dv2, plane, stv, ttv );
 }
}
