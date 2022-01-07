
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_8__ {int * si; int side; int lightmapAxis; int sampleSize; int fogNum; int planeNum; int recvShadows; int castShadows; int surfaceNum; int entityNum; } ;
typedef TYPE_1__ metaTriangle_t ;
struct TYPE_9__ {int* verts; int* indexes; int numVerts; int numIndexes; int maxs; int mins; int sideRef; int lightmapAxis; int sampleSize; int fogNum; int planeNum; int * shaderInfo; int recvShadows; int castShadows; int surfaceNum; int entityNum; } ;
typedef TYPE_2__ mapDrawSurface_t ;
typedef int bspDrawVert_t ;


 int ADEQUATE_SCORE ;
 int AddMetaTriangleToSurface (TYPE_2__*,TYPE_1__*,scalar_t__) ;
 TYPE_2__* AllocDrawSurface (int ) ;
 int AllocSideRef (int ,int *) ;
 int ClassifySurfaces (int,TYPE_2__*) ;
 int ClearBounds (int ,int ) ;
 int GOOD_SCORE ;
 int SURFACE_META ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,int) ;
 int VectorCopy (int ,int ) ;
 int free (int*) ;
 int maxSurfaceIndexes ;
 int maxSurfaceVerts ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int numMergedSurfaces ;
 int numMetaTriangles ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 void* safe_malloc (int) ;

__attribute__((used)) static void MetaTrianglesToSurface( int numPossibles, metaTriangle_t *possibles, int *fOld, int *numAdded ){
 int i, j, f, best, score, bestScore;
 metaTriangle_t *seed, *test;
 mapDrawSurface_t *ds;
 bspDrawVert_t *verts;
 int *indexes;
 qboolean added;



 verts = safe_malloc( sizeof( *verts ) * maxSurfaceVerts );
 indexes = safe_malloc( sizeof( *indexes ) * maxSurfaceIndexes );


 for ( i = 0, seed = possibles; i < numPossibles; i++, seed++ )
 {

  if ( seed->si == ((void*)0) ) {
   continue;
  }






  ds = AllocDrawSurface( SURFACE_META );
  ds->entityNum = seed->entityNum;
  ds->surfaceNum = seed->surfaceNum;
  ds->castShadows = seed->castShadows;
  ds->recvShadows = seed->recvShadows;

  ds->shaderInfo = seed->si;
  ds->planeNum = seed->planeNum;
  ds->fogNum = seed->fogNum;
  ds->sampleSize = seed->sampleSize;
  ds->verts = verts;
  ds->indexes = indexes;
  VectorCopy( seed->lightmapAxis, ds->lightmapAxis );
  ds->sideRef = AllocSideRef( seed->side, ((void*)0) );

  ClearBounds( ds->mins, ds->maxs );


  memset( verts, 0, sizeof( *verts ) * maxSurfaceVerts );
  memset( indexes, 0, sizeof( *indexes ) * maxSurfaceIndexes );


  if ( AddMetaTriangleToSurface( ds, seed, qfalse ) ) {
   ( *numAdded )++;
  }






  added = qtrue;
  while ( added )
  {

   f = 10 * *numAdded / numMetaTriangles;
   if ( f > *fOld ) {
    *fOld = f;
    Sys_FPrintf( SYS_VRB, "%d...", f );
   }


   best = -1;
   bestScore = 0;
   added = qfalse;


   for ( j = i + 1, test = &possibles[ j ]; j < numPossibles; j++, test++ )
   {

    if ( test->si == ((void*)0) ) {
     continue;
    }


    score = AddMetaTriangleToSurface( ds, test, qtrue );
    if ( score > bestScore ) {
     best = j;
     bestScore = score;


     if ( bestScore >= GOOD_SCORE ) {
      if ( AddMetaTriangleToSurface( ds, &possibles[ best ], qfalse ) ) {
       ( *numAdded )++;
      }


      best = -1;
      bestScore = 0;
      added = qtrue;
     }
    }
   }


   if ( best >= 0 && bestScore > ADEQUATE_SCORE ) {
    if ( AddMetaTriangleToSurface( ds, &possibles[ best ], qfalse ) ) {
     ( *numAdded )++;
    }


    added = qtrue;
   }
  }


  ds->verts = safe_malloc( ds->numVerts * sizeof( bspDrawVert_t ) );
  memcpy( ds->verts, verts, ds->numVerts * sizeof( bspDrawVert_t ) );
  ds->indexes = safe_malloc( ds->numIndexes * sizeof( int ) );
  memcpy( ds->indexes, indexes, ds->numIndexes * sizeof( int ) );


  ClassifySurfaces( 1, ds );


  numMergedSurfaces++;
 }


 free( verts );
 free( indexes );
}
