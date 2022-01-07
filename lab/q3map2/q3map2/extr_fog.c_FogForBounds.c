
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {float* mins; float* maxs; } ;
typedef TYPE_1__ brush_t ;
struct TYPE_4__ {TYPE_1__* brush; } ;


 int defaultFogNum ;
 TYPE_2__* mapFogs ;
 int numMapFogs ;

int FogForBounds( vec3_t mins, vec3_t maxs, float epsilon ){
 int fogNum, i, j;
 float highMin, lowMax, volume, bestVolume;
 vec3_t fogMins, fogMaxs, overlap;
 brush_t *brush;



 fogNum = defaultFogNum;


 bestVolume = 0.0f;


 for ( i = 0; i < numMapFogs; i++ )
 {

  if ( mapFogs[ i ].brush == ((void*)0) ) {
   fogNum = i;
   continue;
  }


  brush = mapFogs[ i ].brush;


  fogMins[ 0 ] = brush->mins[ 0 ] - epsilon;
  fogMins[ 1 ] = brush->mins[ 1 ] - epsilon;
  fogMins[ 2 ] = brush->mins[ 2 ] - epsilon;
  fogMaxs[ 0 ] = brush->maxs[ 0 ] + epsilon;
  fogMaxs[ 1 ] = brush->maxs[ 1 ] + epsilon;
  fogMaxs[ 2 ] = brush->maxs[ 2 ] + epsilon;


  for ( j = 0; j < 3; j++ )
  {
   if ( mins[ j ] > fogMaxs[ j ] || maxs[ j ] < fogMins[ j ] ) {
    break;
   }
   highMin = mins[ j ] > fogMins[ j ] ? mins[ j ] : fogMins[ j ];
   lowMax = maxs[ j ] < fogMaxs[ j ] ? maxs[ j ] : fogMaxs[ j ];
   overlap[ j ] = lowMax - highMin;
   if ( overlap[ j ] < 1.0f ) {
    overlap[ j ] = 1.0f;
   }
  }


  if ( j < 3 ) {
   continue;
  }


  volume = overlap[ 0 ] * overlap[ 1 ] * overlap[ 2 ];


  if ( volume > bestVolume ) {
   bestVolume = volume;
   fogNum = i;
  }
 }


 return fogNum;
}
