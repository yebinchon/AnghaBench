
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef float* vec4_t ;
struct TYPE_5__ {float shaderWidth; float shaderHeight; scalar_t__ tcGen; float* averageColor; float* stFlat; void* finished; TYPE_1__* shaderImage; int * vecs; scalar_t__ legacyTerrain; } ;
typedef TYPE_2__ shaderInfo_t ;
typedef float byte ;
struct TYPE_4__ {float width; float height; float* pixels; } ;


 int VectorCopy (float*,float*) ;
 int VectorSet (int ,float,float,int ) ;
 int VectorSubtract (float*,float*,float*) ;
 scalar_t__ qfalse ;
 void* qtrue ;

void FinishShader( shaderInfo_t *si ){
 int x, y;
 float dist, bestDist;
 vec4_t color, bestColor, delta, average;
 int image_width, image_height;
 byte *current_pixel;


 if ( si->finished ) {
  return;
 }


 if ( si->shaderWidth == 0 && si->shaderHeight == 0 ) {
  si->shaderWidth = si->shaderImage->width;
  si->shaderHeight = si->shaderImage->height;
 }


 if ( si->legacyTerrain && si->tcGen == qfalse ) {

  si->tcGen = qtrue;
  VectorSet( si->vecs[ 0 ], ( 1.0f / ( si->shaderWidth * 0.5f ) ), 0, 0 );
  VectorSet( si->vecs[ 1 ], 0, ( 1.0f / ( si->shaderHeight * 0.5f ) ), 0 );
 }

 current_pixel = si->shaderImage->pixels;
 image_width = si->shaderImage->width;
 image_height = si->shaderImage->height;


 bestDist = 99999999;
 VectorCopy( si->averageColor, average );
 average[ 3 ] = si->averageColor[ 3 ];

 for ( y = 0; y < image_height; y++ )
 {
  for ( x = 0; x < image_width; x++ )
  {

   VectorCopy( current_pixel, color );
   color[ 3 ] = current_pixel[ 3 ];
   current_pixel += 4;


   VectorSubtract( color, average, delta );
   delta[ 3 ] = color[ 3 ] - average[ 3 ];
   dist = delta[ 0 ] * delta[ 0 ] + delta[ 1 ] * delta[ 1 ] + delta[ 2 ] * delta[ 2 ] + delta[ 3 ] * delta[ 3 ];
   if ( dist < bestDist ) {
    VectorCopy( color, bestColor );
    bestColor[ 3 ] = color[ 3 ];
    si->stFlat[ 0 ] = (float) x / image_width;
    si->stFlat[ 1 ] = (float) y / image_height;
   }
  }
 }


 si->finished = qtrue;
}
