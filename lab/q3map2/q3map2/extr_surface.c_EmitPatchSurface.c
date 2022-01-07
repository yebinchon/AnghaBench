
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int numVerts; int patchHeight; int patchWidth; size_t outputNum; scalar_t__ planar; size_t type; int * lightmapVecs; int * bounds; int lightmapOrigin; int fogNum; TYPE_1__* shaderInfo; scalar_t__ sampleSize; int lightmapAxis; TYPE_3__* verts; scalar_t__ backSide; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_16__ {int normal; } ;
typedef TYPE_3__ bspDrawVert_t ;
struct TYPE_17__ {int patchWidth; int patchHeight; int* lightmapNum; int * lightmapVecs; int lightmapOrigin; void** vertexStyles; void** lightmapStyles; int fogNum; void* shaderNum; int surfaceType; } ;
typedef TYPE_4__ bspDrawSurface_t ;
struct TYPE_14__ {int surfaceFlags; int contentFlags; char* shader; scalar_t__ invert; } ;


 int ApplySurfaceParm (char*,int*,int*,int *) ;
 int EmitDrawIndexes (TYPE_2__*,TYPE_4__*) ;
 int EmitDrawVerts (TYPE_2__*,TYPE_4__*) ;
 void* EmitShader (char*,int*,int*) ;
 int Error (char*) ;
 void* LS_NONE ;
 void* LS_NORMAL ;
 int MAX_LIGHTMAPS ;
 size_t MAX_MAP_DRAW_SURFS ;
 int MST_PATCH ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 int VectorScale (int ,float,int ) ;
 TYPE_4__* bspDrawSurfaces ;
 scalar_t__ debugSurfaces ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;
 int memset (TYPE_4__*,int ,int) ;
 size_t numBSPDrawSurfaces ;
 int * numSurfacesByType ;
 scalar_t__ patchMeta ;
 scalar_t__ qfalse ;

void EmitPatchSurface( mapDrawSurface_t *ds ){
 int i, j;
 bspDrawSurface_t *out;
 int surfaceFlags, contentFlags;



 if ( ds->backSide || ds->shaderInfo->invert ) {
  bspDrawVert_t *dv1, *dv2, temp;



  for ( i = 0; i < ds->numVerts; i++ )
   VectorScale( ds->verts[ i ].normal, -1.0f, ds->verts[ i ].normal );


  for ( j = 0; j < ds->patchHeight; j++ )
  {
   for ( i = 0; i < ( ds->patchWidth / 2 ); i++ )
   {
    dv1 = &ds->verts[ j * ds->patchWidth + i ];
    dv2 = &ds->verts[ j * ds->patchWidth + ( ds->patchWidth - i - 1 ) ];
    memcpy( &temp, dv1, sizeof( bspDrawVert_t ) );
    memcpy( dv1, dv2, sizeof( bspDrawVert_t ) );
    memcpy( dv2, &temp, sizeof( bspDrawVert_t ) );
   }
  }


  VectorScale( ds->lightmapVecs[ 2 ], -1.0f, ds->lightmapVecs[ 2 ] );
 }


 if ( numBSPDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
  Error( "MAX_MAP_DRAW_SURFS" );
 }
 out = &bspDrawSurfaces[ numBSPDrawSurfaces ];
 ds->outputNum = numBSPDrawSurfaces;
 numBSPDrawSurfaces++;
 memset( out, 0, sizeof( *out ) );


 out->surfaceType = MST_PATCH;
 if ( debugSurfaces ) {
  out->shaderNum = EmitShader( "debugsurfaces", ((void*)0), ((void*)0) );
 }
 else if ( patchMeta ) {

  surfaceFlags = ds->shaderInfo->surfaceFlags;
  contentFlags = ds->shaderInfo->contentFlags;
  ApplySurfaceParm( "nodraw", &contentFlags, &surfaceFlags, ((void*)0) );
  ApplySurfaceParm( "pointlight", &contentFlags, &surfaceFlags, ((void*)0) );


  VectorClear( ds->lightmapVecs[ 2 ] );
  VectorClear( ds->lightmapAxis );
  ds->sampleSize = 0;


  out->shaderNum = EmitShader( ds->shaderInfo->shader, &contentFlags, &surfaceFlags );
 }
 else{
  out->shaderNum = EmitShader( ds->shaderInfo->shader, &ds->shaderInfo->contentFlags, &ds->shaderInfo->surfaceFlags );
 }
 out->patchWidth = ds->patchWidth;
 out->patchHeight = ds->patchHeight;
 out->fogNum = ds->fogNum;


 for ( i = 0; i < MAX_LIGHTMAPS; i++ )
 {
  out->lightmapNum[ i ] = -3;
  out->lightmapStyles[ i ] = LS_NONE;
  out->vertexStyles[ i ] = LS_NONE;
 }
 out->lightmapStyles[ 0 ] = LS_NORMAL;
 out->vertexStyles[ 0 ] = LS_NORMAL;


 VectorCopy( ds->lightmapOrigin, out->lightmapOrigin );
 VectorCopy( ds->bounds[ 0 ], out->lightmapVecs[ 0 ] );
 VectorCopy( ds->bounds[ 1 ], out->lightmapVecs[ 1 ] );
 VectorCopy( ds->lightmapVecs[ 2 ], out->lightmapVecs[ 2 ] );


 if ( ds->planar == qfalse ) {
  VectorClear( out->lightmapVecs[ 2 ] );
 }


 EmitDrawVerts( ds, out );
 EmitDrawIndexes( ds, out );


 numSurfacesByType[ ds->type ]++;
}
