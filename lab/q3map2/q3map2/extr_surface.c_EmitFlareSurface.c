
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t type; size_t outputNum; int * lightmapVecs; int lightmapOrigin; void* lightStyle; int fogNum; TYPE_1__* shaderInfo; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_9__ {int* lightmapNum; int * lightmapVecs; int lightmapOrigin; void** vertexStyles; void** lightmapStyles; int fogNum; int shaderNum; int surfaceType; } ;
typedef TYPE_3__ bspDrawSurface_t ;
struct TYPE_7__ {int surfaceFlags; int contentFlags; int shader; } ;


 int EmitShader (int ,int *,int *) ;
 int Error (char*) ;
 void* LS_NONE ;
 int MAX_LIGHTMAPS ;
 size_t MAX_MAP_DRAW_SURFS ;
 int MST_FLARE ;
 size_t SURFACE_SHADER ;
 int VectorCopy (int ,int ) ;
 TYPE_3__* bspDrawSurfaces ;
 scalar_t__ emitFlares ;
 int memset (TYPE_3__*,int ,int) ;
 size_t numBSPDrawSurfaces ;
 int * numSurfacesByType ;
 scalar_t__ qfalse ;

void EmitFlareSurface( mapDrawSurface_t *ds ){
 int i;
 bspDrawSurface_t *out;



 if ( emitFlares == qfalse && ds->type != SURFACE_SHADER ) {
  return;
 }


 if ( numBSPDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
  Error( "MAX_MAP_DRAW_SURFS" );
 }


 if ( numBSPDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
  Error( "MAX_MAP_DRAW_SURFS" );
 }
 out = &bspDrawSurfaces[ numBSPDrawSurfaces ];
 ds->outputNum = numBSPDrawSurfaces;
 numBSPDrawSurfaces++;
 memset( out, 0, sizeof( *out ) );


 out->surfaceType = MST_FLARE;
 out->shaderNum = EmitShader( ds->shaderInfo->shader, &ds->shaderInfo->contentFlags, &ds->shaderInfo->surfaceFlags );
 out->fogNum = ds->fogNum;


 for ( i = 0; i < MAX_LIGHTMAPS; i++ )
 {
  out->lightmapNum[ i ] = -3;
  out->lightmapStyles[ i ] = LS_NONE;
  out->vertexStyles[ i ] = LS_NONE;
 }
 out->lightmapStyles[ 0 ] = ds->lightStyle;
 out->vertexStyles[ 0 ] = ds->lightStyle;

 VectorCopy( ds->lightmapOrigin, out->lightmapOrigin );
 VectorCopy( ds->lightmapVecs[ 0 ], out->lightmapVecs[ 0 ] );
 VectorCopy( ds->lightmapVecs[ 1 ], out->lightmapVecs[ 1 ] );
 VectorCopy( ds->lightmapVecs[ 2 ], out->lightmapVecs[ 2 ] );


 numSurfacesByType[ ds->type ]++;
}
