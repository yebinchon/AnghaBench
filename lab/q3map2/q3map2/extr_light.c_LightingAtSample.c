
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_6__ {float* normal; int numLights; float* color; TYPE_1__* light; TYPE_1__** lights; } ;
typedef TYPE_2__ trace_t ;
typedef scalar_t__ byte ;
struct TYPE_5__ {scalar_t__ style; int flags; } ;


 int LIGHT_NEGATIVE ;
 scalar_t__ LS_NONE ;
 int LightContributionToSample (TYPE_2__*) ;
 int MAX_LIGHTMAPS ;
 int VectorAdd (float*,float*,float*) ;
 int VectorClear (float*) ;
 int VectorCopy (int ,float*) ;
 int VectorScale (float*,float,float*) ;
 int ambientColor ;
 int bouncing ;
 scalar_t__ cheap ;
 scalar_t__ normalmap ;

void LightingAtSample( trace_t *trace, byte styles[ MAX_LIGHTMAPS ], vec3_t colors[ MAX_LIGHTMAPS ] ){
 int i, lightmapNum;



 for ( lightmapNum = 0; lightmapNum < MAX_LIGHTMAPS; lightmapNum++ )
  VectorClear( colors[ lightmapNum ] );


 if ( normalmap ) {
  colors[ 0 ][ 0 ] = ( trace->normal[ 0 ] + 1.0f ) * 127.5f;
  colors[ 0 ][ 1 ] = ( trace->normal[ 1 ] + 1.0f ) * 127.5f;
  colors[ 0 ][ 2 ] = ( trace->normal[ 2 ] + 1.0f ) * 127.5f;
  return;
 }


 if ( !bouncing ) {
  VectorCopy( ambientColor, colors[ 0 ] );
 }


 for ( i = 0; i < trace->numLights && trace->lights[ i ] != ((void*)0); i++ )
 {

  trace->light = trace->lights[ i ];


  for ( lightmapNum = 0; lightmapNum < MAX_LIGHTMAPS; lightmapNum++ )
  {
   if ( styles[ lightmapNum ] == trace->light->style ||
     styles[ lightmapNum ] == LS_NONE ) {
    break;
   }
  }


  if ( lightmapNum >= MAX_LIGHTMAPS ) {
   continue;
  }


  LightContributionToSample( trace );
  if ( trace->color[ 0 ] == 0.0f && trace->color[ 1 ] == 0.0f && trace->color[ 2 ] == 0.0f ) {
   continue;
  }


  if ( trace->light->flags & LIGHT_NEGATIVE ) {
   VectorScale( trace->color, -1.0f, trace->color );
  }


  styles[ lightmapNum ] = trace->light->style;


  VectorAdd( colors[ lightmapNum ], trace->color, colors[ lightmapNum ] );


  if ( cheap &&
    colors[ 0 ][ 0 ] >= 255.0f &&
    colors[ 0 ][ 1 ] >= 255.0f &&
    colors[ 0 ][ 2 ] >= 255.0f ) {
   break;
  }
 }
}
