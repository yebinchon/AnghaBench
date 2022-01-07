
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ibspHeader_t ;
struct TYPE_5__ {int lightmapNum; int patchHeight; int patchWidth; int * lightmapVecs; int lightmapOrigin; int lightmapHeight; int lightmapWidth; scalar_t__ lightmapY; scalar_t__ lightmapX; int numIndexes; int firstIndex; int numVerts; int firstVert; int surfaceType; int fogNum; int shaderNum; } ;
typedef TYPE_1__ ibspDrawSurface_t ;
typedef int bspHeader_t ;
struct TYPE_6__ {int* lightmapNum; int patchHeight; int patchWidth; int * lightmapVecs; int lightmapOrigin; int lightmapHeight; int lightmapWidth; scalar_t__* lightmapY; scalar_t__* lightmapX; void** vertexStyles; void** lightmapStyles; int numIndexes; int firstIndex; int numVerts; int firstVert; int surfaceType; int fogNum; int shaderNum; } ;
typedef TYPE_2__ bspDrawSurface_t ;


 TYPE_1__* GetLump (int *,int ) ;
 int GetLumpElements (int *,int ,int) ;
 void* LS_NONE ;
 void* LS_NORMAL ;
 int LUMP_SURFACES ;
 int MAX_LIGHTMAPS ;
 int SetDrawSurfaces (int) ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* bspDrawSurfaces ;
 int numBSPDrawSurfaces ;

__attribute__((used)) static void CopyDrawSurfacesLump( ibspHeader_t *header ){
 int i, j;
 ibspDrawSurface_t *in;
 bspDrawSurface_t *out;



 numBSPDrawSurfaces = GetLumpElements( (bspHeader_t*) header, LUMP_SURFACES, sizeof( *in ) );
 SetDrawSurfaces( numBSPDrawSurfaces );


 in = GetLump( (bspHeader_t*) header, LUMP_SURFACES );
 out = bspDrawSurfaces;
 for ( i = 0; i < numBSPDrawSurfaces; i++ )
 {
  out->shaderNum = in->shaderNum;
  out->fogNum = in->fogNum;
  out->surfaceType = in->surfaceType;
  out->firstVert = in->firstVert;
  out->numVerts = in->numVerts;
  out->firstIndex = in->firstIndex;
  out->numIndexes = in->numIndexes;

  out->lightmapStyles[ 0 ] = LS_NORMAL;
  out->vertexStyles[ 0 ] = LS_NORMAL;
  out->lightmapNum[ 0 ] = in->lightmapNum;
  out->lightmapX[ 0 ] = in->lightmapX;
  out->lightmapY[ 0 ] = in->lightmapY;

  for ( j = 1; j < MAX_LIGHTMAPS; j++ )
  {
   out->lightmapStyles[ j ] = LS_NONE;
   out->vertexStyles[ j ] = LS_NONE;
   out->lightmapNum[ j ] = -3;
   out->lightmapX[ j ] = 0;
   out->lightmapY[ j ] = 0;
  }

  out->lightmapWidth = in->lightmapWidth;
  out->lightmapHeight = in->lightmapHeight;

  VectorCopy( in->lightmapOrigin, out->lightmapOrigin );
  VectorCopy( in->lightmapVecs[ 0 ], out->lightmapVecs[ 0 ] );
  VectorCopy( in->lightmapVecs[ 1 ], out->lightmapVecs[ 1 ] );
  VectorCopy( in->lightmapVecs[ 2 ], out->lightmapVecs[ 2 ] );

  out->patchWidth = in->patchWidth;
  out->patchHeight = in->patchHeight;

  in++;
  out++;
 }
}
