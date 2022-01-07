
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int lightmapAxis; int sampleSize; int fogNum; int recvShadows; int castShadows; int planeNum; int surfaceNum; int entityNum; int * side; int si; } ;
typedef TYPE_2__ metaTriangle_t ;
struct TYPE_9__ {scalar_t__ type; int numVerts; int numIndexes; size_t* indexes; int planeNum; int * verts; int lightmapAxis; int sampleSize; int fogNum; int recvShadows; int castShadows; int surfaceNum; int entityNum; TYPE_1__* sideRef; int shaderInfo; } ;
typedef TYPE_3__ mapDrawSurface_t ;
typedef int c ;
typedef int bspDrawVert_t ;
typedef int b ;
typedef int a ;
struct TYPE_7__ {int * side; } ;


 int ClearSurface (TYPE_3__*) ;
 int FindMetaTriangle (TYPE_2__*,int *,int *,int *,int ) ;
 scalar_t__ SURFACE_BAD ;
 scalar_t__ SURFACE_DECAL ;
 scalar_t__ SURFACE_FACE ;
 scalar_t__ SURFACE_FORCED_META ;
 scalar_t__ SURFACE_META ;
 int VectorCopy (int ,int ) ;
 int firstSearchMetaVert ;
 int memcpy (int *,int *,int) ;
 int numMetaSurfaces ;
 int numMetaVerts ;

__attribute__((used)) static void SurfaceToMetaTriangles( mapDrawSurface_t *ds ){
 int i;
 metaTriangle_t src;
 bspDrawVert_t a, b, c;



 if ( ds->type != SURFACE_FACE &&
   ds->type != SURFACE_META &&
   ds->type != SURFACE_FORCED_META &&
   ds->type != SURFACE_DECAL ) {
  return;
 }


 firstSearchMetaVert = numMetaVerts;


 if ( ds->type != SURFACE_BAD && ds->numVerts >= 3 && ds->numIndexes >= 3 ) {

  for ( i = 0; i < ds->numIndexes; i += 3 )
  {

   if ( ds->indexes[ i ] == ds->indexes[ i + 1 ] ||
     ds->indexes[ i ] == ds->indexes[ i + 2 ] ||
     ds->indexes[ i + 1 ] == ds->indexes[ i + 2 ] ) {

    continue;
   }


   src.si = ds->shaderInfo;
   src.side = ( ds->sideRef != ((void*)0) ? ds->sideRef->side : ((void*)0) );
   src.entityNum = ds->entityNum;
   src.surfaceNum = ds->surfaceNum;
   src.planeNum = ds->planeNum;
   src.castShadows = ds->castShadows;
   src.recvShadows = ds->recvShadows;
   src.fogNum = ds->fogNum;
   src.sampleSize = ds->sampleSize;
   VectorCopy( ds->lightmapAxis, src.lightmapAxis );


   memcpy( &a, &ds->verts[ ds->indexes[ i ] ], sizeof( a ) );
   memcpy( &b, &ds->verts[ ds->indexes[ i + 1 ] ], sizeof( b ) );
   memcpy( &c, &ds->verts[ ds->indexes[ i + 2 ] ], sizeof( c ) );
   FindMetaTriangle( &src, &a, &b, &c, ds->planeNum );
  }


  numMetaSurfaces++;
 }


 ClearSurface( ds );
}
