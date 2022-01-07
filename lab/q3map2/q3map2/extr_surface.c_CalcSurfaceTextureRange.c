
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_7__ {int numVerts; float* bias; int* texMins; int* texMaxs; int* texRange; TYPE_2__* verts; TYPE_1__* shaderInfo; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_6__ {float* st; } ;
struct TYPE_5__ {int shaderWidth; int shaderHeight; } ;


 float floor (float) ;
 int qfalse ;
 int qtrue ;
 int texRange ;

qboolean CalcSurfaceTextureRange( mapDrawSurface_t *ds ){
 int i, j, v, size[ 2 ];
 float mins[ 2 ], maxs[ 2 ];



 if ( ds->numVerts <= 0 ) {
  return qtrue;
 }


 mins[ 0 ] = 999999;
 mins[ 1 ] = 999999;
 maxs[ 0 ] = -999999;
 maxs[ 1 ] = -999999;
 for ( i = 0; i < ds->numVerts; i++ )
 {
  for ( j = 0; j < 2; j++ )
  {
   if ( ds->verts[ i ].st[ j ] < mins[ j ] ) {
    mins[ j ] = ds->verts[ i ].st[ j ];
   }
   if ( ds->verts[ i ].st[ j ] > maxs[ j ] ) {
    maxs[ j ] = ds->verts[ i ].st[ j ];
   }
  }
 }


 for ( j = 0; j < 2; j++ )
  ds->bias[ j ] = -floor( 0.5f * ( mins[ j ] + maxs[ j ] ) );


 size[ 0 ] = ds->shaderInfo->shaderWidth;
 size[ 1 ] = ds->shaderInfo->shaderHeight;
 ds->texMins[ 0 ] = 999999;
 ds->texMins[ 1 ] = 999999;
 ds->texMaxs[ 0 ] = -999999;
 ds->texMaxs[ 1 ] = -999999;
 for ( i = 0; i < ds->numVerts; i++ )
 {
  for ( j = 0; j < 2; j++ )
  {
   v = ( (float) ds->verts[ i ].st[ j ] + ds->bias[ j ] ) * size[ j ];
   if ( v < ds->texMins[ j ] ) {
    ds->texMins[ j ] = v;
   }
   if ( v > ds->texMaxs[ j ] ) {
    ds->texMaxs[ j ] = v;
   }
  }
 }


 for ( j = 0; j < 2; j++ )
  ds->texRange[ j ] = ( ds->texMaxs[ j ] - ds->texMins[ j ] );


 if ( texRange == 0 ) {
  return qtrue;
 }


 for ( j = 0; j < 2; j++ )
 {
  if ( ds->texMins[ j ] < -texRange || ds->texMaxs[ j ] > texRange ) {
   return qfalse;
  }
 }


 return qtrue;
}
