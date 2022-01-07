
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ibspHeader_t ;
struct TYPE_8__ {int patchHeight; int patchWidth; int * lightmapVecs; int lightmapOrigin; int lightmapHeight; int lightmapWidth; int lightmapY; int lightmapX; int lightmapNum; int numIndexes; int firstIndex; int numVerts; int firstVert; int surfaceType; int fogNum; int shaderNum; } ;
typedef TYPE_1__ ibspDrawSurface_t ;
typedef int bspHeader_t ;
struct TYPE_9__ {int patchHeight; int patchWidth; int * lightmapVecs; int lightmapOrigin; int lightmapHeight; int lightmapWidth; int * lightmapY; int * lightmapX; int * lightmapNum; int numIndexes; int firstIndex; int numVerts; int firstVert; int surfaceType; int fogNum; int shaderNum; } ;
typedef TYPE_2__ bspDrawSurface_t ;
typedef int FILE ;


 int AddLump (int *,int *,int ,TYPE_1__*,int) ;
 int LUMP_SURFACES ;
 int VectorCopy (int ,int ) ;
 TYPE_2__* bspDrawSurfaces ;
 int free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int numBSPDrawSurfaces ;
 TYPE_1__* safe_malloc (int) ;

__attribute__((used)) static void AddDrawSurfacesLump( FILE *file, ibspHeader_t *header ){
 int i, size;
 bspDrawSurface_t *in;
 ibspDrawSurface_t *buffer, *out;



 size = numBSPDrawSurfaces * sizeof( *buffer );
 buffer = safe_malloc( size );
 memset( buffer, 0, size );


 in = bspDrawSurfaces;
 out = buffer;
 for ( i = 0; i < numBSPDrawSurfaces; i++ )
 {
  out->shaderNum = in->shaderNum;
  out->fogNum = in->fogNum;
  out->surfaceType = in->surfaceType;
  out->firstVert = in->firstVert;
  out->numVerts = in->numVerts;
  out->firstIndex = in->firstIndex;
  out->numIndexes = in->numIndexes;

  out->lightmapNum = in->lightmapNum[ 0 ];
  out->lightmapX = in->lightmapX[ 0 ];
  out->lightmapY = in->lightmapY[ 0 ];
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


 AddLump( file, (bspHeader_t*) header, LUMP_SURFACES, buffer, size );


 free( buffer );
}
