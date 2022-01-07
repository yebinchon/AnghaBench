
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_14__ {int numIndexes; int* indexes; int numVerts; size_t outputNum; size_t type; scalar_t__ planar; int * lightmapVecs; int lightmapOrigin; TYPE_3__* verts; int fogNum; int patchHeight; int patchWidth; TYPE_1__* shaderInfo; int lightmapAxis; scalar_t__ backSide; } ;
typedef TYPE_2__ mapDrawSurface_t ;
struct TYPE_15__ {int xyz; int normal; } ;
typedef TYPE_3__ bspDrawVert_t ;
struct TYPE_16__ {int* lightmapNum; int * lightmapVecs; int lightmapOrigin; void** vertexStyles; void** lightmapStyles; int fogNum; int patchHeight; int patchWidth; void* shaderNum; int surfaceType; } ;
typedef TYPE_4__ bspDrawSurface_t ;
struct TYPE_13__ {char* shader; int surfaceFlags; int contentFlags; scalar_t__ invert; } ;


 int EmitDrawIndexes (TYPE_2__*,TYPE_4__*) ;
 int EmitDrawVerts (TYPE_2__*,TYPE_4__*) ;
 void* EmitShader (char*,int *,int *) ;
 int Error (char*) ;
 void* LS_NONE ;
 void* LS_NORMAL ;
 int MAX_LIGHTMAPS ;
 size_t MAX_MAP_DRAW_SURFS ;
 int MST_FOLIAGE ;
 int MST_PLANAR ;
 int MST_TRIANGLE_SOUP ;
 int OptimizeTriangleSurface (TYPE_2__*) ;
 size_t SURFACE_FOGHULL ;
 size_t SURFACE_FOLIAGE ;
 size_t SURFACE_TRIANGLES ;
 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorCopy (int ,int ) ;
 float VectorLength (int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorScale (int ,float,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_4__* bspDrawSurfaces ;
 scalar_t__ debugInset ;
 scalar_t__ debugSurfaces ;
 int maxLMSurfaceVerts ;
 int memset (TYPE_4__*,int ,int) ;
 size_t numBSPDrawSurfaces ;
 int * numSurfacesByType ;
 scalar_t__ qfalse ;

__attribute__((used)) static void EmitTriangleSurface( mapDrawSurface_t *ds ){
 int i, temp;
 bspDrawSurface_t *out;



 if ( ds->backSide || ds->shaderInfo->invert ) {

  for ( i = 0; i < ds->numIndexes; i += 3 )
  {
   temp = ds->indexes[ i ];
   ds->indexes[ i ] = ds->indexes[ i + 1 ];
   ds->indexes[ i + 1 ] = temp;
  }


  for ( i = 0; i < ds->numVerts; i++ )
   VectorScale( ds->verts[ i ].normal, -1.0f, ds->verts[ i ].normal );


  VectorScale( ds->lightmapVecs[ 2 ], -1.0f, ds->lightmapVecs[ 2 ] );
 }


 if ( numBSPDrawSurfaces == MAX_MAP_DRAW_SURFS ) {
  Error( "MAX_MAP_DRAW_SURFS" );
 }
 out = &bspDrawSurfaces[ numBSPDrawSurfaces ];
 ds->outputNum = numBSPDrawSurfaces;
 numBSPDrawSurfaces++;
 memset( out, 0, sizeof( *out ) );


 if ( ds->type == SURFACE_FOLIAGE ) {
  out->surfaceType = MST_FOLIAGE;
 }



 else if ( ( VectorLength( ds->lightmapAxis ) <= 0.0f && ds->planar == qfalse ) ||
     ds->type == SURFACE_TRIANGLES ||
     ds->type == SURFACE_FOGHULL ||
     ds->numVerts > maxLMSurfaceVerts ||
     debugSurfaces ) {
  out->surfaceType = MST_TRIANGLE_SOUP;
 }


 else{
  out->surfaceType = MST_PLANAR;
 }


 if ( debugSurfaces ) {
  out->shaderNum = EmitShader( "debugsurfaces", ((void*)0), ((void*)0) );
 }
 else{
  out->shaderNum = EmitShader( ds->shaderInfo->shader, &ds->shaderInfo->contentFlags, &ds->shaderInfo->surfaceFlags );
 }
 out->patchWidth = ds->patchWidth;
 out->patchHeight = ds->patchHeight;
 out->fogNum = ds->fogNum;


 if ( debugInset ) {
  bspDrawVert_t *a, *b, *c;
  vec3_t cent, dir;



  for ( i = 0; i < ds->numIndexes; i += 3 )
  {

   a = &ds->verts[ ds->indexes[ i ] ];
   b = &ds->verts[ ds->indexes[ i + 1 ] ];
   c = &ds->verts[ ds->indexes[ i + 2 ] ];


   VectorCopy( a->xyz, cent );
   VectorAdd( cent, b->xyz, cent );
   VectorAdd( cent, c->xyz, cent );
   VectorScale( cent, 1.0f / 3.0f, cent );


   VectorSubtract( cent, a->xyz, dir );
   VectorNormalize( dir, dir );
   VectorAdd( a->xyz, dir, a->xyz );
   VectorSubtract( cent, b->xyz, dir );
   VectorNormalize( dir, dir );
   VectorAdd( b->xyz, dir, b->xyz );
   VectorSubtract( cent, c->xyz, dir );
   VectorNormalize( dir, dir );
   VectorAdd( c->xyz, dir, c->xyz );
  }
 }


 for ( i = 0; i < MAX_LIGHTMAPS; i++ )
 {
  out->lightmapNum[ i ] = -3;
  out->lightmapStyles[ i ] = LS_NONE;
  out->vertexStyles[ i ] = LS_NONE;
 }
 out->lightmapStyles[ 0 ] = LS_NORMAL;
 out->vertexStyles[ 0 ] = LS_NORMAL;


 VectorCopy( ds->lightmapOrigin, out->lightmapOrigin );
 VectorCopy( ds->lightmapVecs[ 0 ], out->lightmapVecs[ 0 ] );
 VectorCopy( ds->lightmapVecs[ 1 ], out->lightmapVecs[ 1 ] );
 VectorCopy( ds->lightmapVecs[ 2 ], out->lightmapVecs[ 2 ] );


 if ( ds->planar == qfalse ) {
  VectorClear( out->lightmapVecs[ 2 ] );
 }


 OptimizeTriangleSurface( ds );


 EmitDrawVerts( ds, out );
 EmitDrawIndexes( ds, out );


 numSurfacesByType[ ds->type ]++;
}
