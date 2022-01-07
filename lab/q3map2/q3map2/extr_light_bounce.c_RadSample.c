
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int* vec4_t ;
typedef double* vec3_t ;
struct TYPE_12__ {int averageColor; TYPE_1__* lightImage; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_13__ {int w; int h; int ** radLuxels; } ;
typedef TYPE_3__ rawLightmap_t ;
struct TYPE_14__ {int numVerts; TYPE_5__* verts; } ;
typedef TYPE_4__ radWinding_t ;
struct TYPE_15__ {float* st; float** color; double** lightmap; } ;
typedef TYPE_5__ radVert_t ;
struct TYPE_16__ {int* vertexStyles; int* lightmapStyles; } ;
typedef TYPE_6__ bspDrawSurface_t ;
struct TYPE_11__ {int height; int width; int pixels; } ;


 int AddPointToBounds (double*,double*,double*) ;
 int ClearBounds (double*,double*) ;
 int MAX_SAMPLES ;
 float* RAD_LUXEL (int,int,int) ;
 int RadSampleImage (int ,int ,int ,float*,int*) ;
 int SAMPLE_GRANULARITY ;
 int VectorAdd (double*,double*,double*) ;
 int VectorClear (double*) ;
 int VectorCopy (int ,int*) ;
 int VectorScale (double*,double,double*) ;
 scalar_t__ bouncing ;
 scalar_t__ qfalse ;
 scalar_t__ superSample ;

__attribute__((used)) static void RadSample( int lightmapNum, bspDrawSurface_t *ds, rawLightmap_t *lm, shaderInfo_t *si, radWinding_t *rw, vec3_t average, vec3_t gradient, int *style ){
 int i, j, k, l, v, x, y, samples;
 vec3_t color, mins, maxs;
 vec4_t textureColor;
 float alpha, alphaI, bf;
 vec3_t blend;
 float st[ 2 ], lightmap[ 2 ], *radLuxel;
 radVert_t *rv[ 3 ];



 ClearBounds( mins, maxs );
 VectorClear( average );
 VectorClear( gradient );
 alpha = 0;


 if ( rw == ((void*)0) || rw->numVerts < 3 ) {
  return;
 }


 samples = 0;


 if ( lm == ((void*)0) || lm->radLuxels[ lightmapNum ] == ((void*)0) || bouncing == qfalse ) {
  for ( samples = 0; samples < rw->numVerts; samples++ )
  {

   if ( !RadSampleImage( si->lightImage->pixels, si->lightImage->width, si->lightImage->height, rw->verts[ samples ].st, textureColor ) ) {
    VectorCopy( si->averageColor, textureColor );
    textureColor[ 3 ] = 255.0f;
   }
   for ( i = 0; i < 3; i++ )
    color[ i ] = ( textureColor[ i ] / 255 ) * ( rw->verts[ samples ].color[ lightmapNum ][ i ] / 255.0f );

   AddPointToBounds( color, mins, maxs );
   VectorAdd( average, color, average );


   alpha += ( textureColor[ 3 ] / 255.0f ) * ( rw->verts[ samples ].color[ lightmapNum ][ 3 ] / 255.0f );
  }


  *style = ds->vertexStyles[ lightmapNum ];
 }


 else
 {

  for ( v = 1; v < ( rw->numVerts - 1 ) && samples < MAX_SAMPLES; v++ )
  {

   rv[ 0 ] = &rw->verts[ 0 ];
   rv[ 1 ] = &rw->verts[ v ];
   rv[ 2 ] = &rw->verts[ v + 1 ];


   for ( i = 1; i < SAMPLE_GRANULARITY && samples < MAX_SAMPLES; i++ )
   {
    for ( j = 1; j < SAMPLE_GRANULARITY && samples < MAX_SAMPLES; j++ )
    {
     for ( k = 1; k < SAMPLE_GRANULARITY && samples < MAX_SAMPLES; k++ )
     {

      blend[ 0 ] = i;
      blend[ 1 ] = j;
      blend[ 2 ] = k;
      bf = ( 1.0 / ( blend[ 0 ] + blend[ 1 ] + blend[ 2 ] ) );
      VectorScale( blend, bf, blend );


      st[ 0 ] = st[ 1 ] = 0.0f;
      lightmap[ 0 ] = lightmap[ 1 ] = 0.0f;
      alphaI = 0.0f;
      for ( l = 0; l < 3; l++ )
      {
       st[ 0 ] += ( rv[ l ]->st[ 0 ] * blend[ l ] );
       st[ 1 ] += ( rv[ l ]->st[ 1 ] * blend[ l ] );
       lightmap[ 0 ] += ( rv[ l ]->lightmap[ lightmapNum ][ 0 ] * blend[ l ] );
       lightmap[ 1 ] += ( rv[ l ]->lightmap[ lightmapNum ][ 1 ] * blend[ l ] );
       alphaI += ( rv[ l ]->color[ lightmapNum ][ 3 ] * blend[ l ] );
      }


      x = lightmap[ 0 ] / (float) superSample;
      y = lightmap[ 1 ] / (float) superSample;
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


      radLuxel = RAD_LUXEL( lightmapNum, x, y );


      if ( radLuxel[ 0 ] < 0.0f ) {
       continue;
      }


      samples++;


      if ( !RadSampleImage( si->lightImage->pixels, si->lightImage->width, si->lightImage->height, st, textureColor ) ) {
       VectorCopy( si->averageColor, textureColor );
       textureColor[ 3 ] = 255;
      }
      for ( i = 0; i < 3; i++ )
       color[ i ] = ( textureColor[ i ] / 255 ) * ( radLuxel[ i ] / 255 );

      AddPointToBounds( color, mins, maxs );
      VectorAdd( average, color, average );


      alpha += ( textureColor[ 3 ] / 255 ) * ( alphaI / 255 );
     }
    }
   }
  }


  *style = ds->lightmapStyles[ lightmapNum ];
 }


 if ( samples <= 0 ) {
  return;
 }


 VectorScale( average, ( 1.0 / samples ), average );
 for ( i = 0; i < 3; i++ )
  gradient[ i ] = ( maxs[ i ] - mins[ i ] ) * maxs[ i ];
}
