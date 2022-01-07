
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_5__ {int w; int h; scalar_t__* styles; } ;
typedef TYPE_1__ rawLightmap_t ;
typedef int qboolean ;
typedef int byte ;
struct TYPE_6__ {int** lightmap; float** color; } ;
typedef TYPE_2__ bspDrawVert_t ;


 float* BSP_LUXEL (int,int,int) ;
 int ColorToBytes (scalar_t__*,int*,float) ;
 scalar_t__ LS_NONE ;
 int MAX_LIGHTMAPS ;
 int VectorCopy (float*,scalar_t__*) ;
 int approximateTolerance ;
 scalar_t__* minLight ;
 int qfalse ;
 int qtrue ;
 int superSample ;

__attribute__((used)) static qboolean ApproximateLuxel( rawLightmap_t *lm, bspDrawVert_t *dv ){
 int i, x, y, d, lightmapNum;
 float *luxel;
 vec3_t color, vertexColor;
 byte cb[ 4 ], vcb[ 4 ];



 x = dv->lightmap[ 0 ][ 0 ] / superSample;
 y = dv->lightmap[ 0 ][ 1 ] / superSample;
 if ( x < 0 ) {
  x = 0;
 }
 else if ( x >= lm->w ) {
  x = lm->w - 1;
 }
 if ( y < 0 ) {
  y = 0;
 }
 else if ( y >= lm->h ) {
  y = lm->h - 1;
 }


 for ( lightmapNum = 0; lightmapNum < MAX_LIGHTMAPS; lightmapNum++ )
 {

  if ( lm->styles[ lightmapNum ] == LS_NONE ) {
   continue;
  }


  luxel = BSP_LUXEL( lightmapNum, x, y );


  if ( luxel[ 0 ] < 0.0f || luxel[ 1 ] < 0.0f || luxel[ 2 ] < 0.0f ) {
   return qtrue;
  }


  VectorCopy( luxel, color );
  VectorCopy( dv->color[ 0 ], vertexColor );


  if ( lightmapNum == 0 ) {
   for ( i = 0; i < 3; i++ )
   {

    if ( color[ i ] < minLight[ i ] ) {
     color[ i ] = minLight[ i ];
    }
    if ( vertexColor[ i ] < minLight[ i ] ) {
     vertexColor[ i ] = minLight[ i ];
    }
   }
  }


  ColorToBytes( color, cb, 1.0f );
  ColorToBytes( vertexColor, vcb, 1.0f );


  for ( i = 0; i < 3; i++ )
  {
   d = cb[ i ] - vcb[ i ];
   if ( d < 0 ) {
    d *= -1;
   }
   if ( d > approximateTolerance ) {
    return qfalse;
   }
  }
 }


 return qtrue;
}
