
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int surfaceInfo_t ;
typedef int shaderInfo_t ;
typedef int rawLightmap_t ;
struct TYPE_9__ {int numVerts; TYPE_4__* verts; } ;
typedef TYPE_1__ radWinding_t ;
typedef int clipWork_t ;
typedef int bspDrawVert_t ;
struct TYPE_10__ {int numIndexes; int firstVert; int firstIndex; } ;
typedef TYPE_2__ bspDrawSurface_t ;
struct TYPE_12__ {int ** color; } ;
struct TYPE_11__ {int ** color; } ;


 int MAX_LIGHTMAPS ;
 float* RAD_VERTEX_LUXEL (int,int) ;
 int RadSubdivideDiffuseLight (int,TYPE_2__*,int *,int *,float,float,int ,TYPE_1__*,int *) ;
 int VectorCopy (float*,int *) ;
 int* bspDrawIndexes ;
 TYPE_2__* bspDrawSurfaces ;
 int memcpy (TYPE_4__*,TYPE_3__*,int) ;
 int qtrue ;
 int * surfaceInfos ;
 TYPE_3__* yDrawVerts ;

void RadLightForTriangles( int num, int lightmapNum, rawLightmap_t *lm, shaderInfo_t *si, float scale, float subdivide, clipWork_t *cw ){
 int i, j, k, v;
 bspDrawSurface_t *ds;
 surfaceInfo_t *info;
 float *radVertexLuxel;
 radWinding_t rw;



 ds = &bspDrawSurfaces[ num ];
 info = &surfaceInfos[ num ];


 rw.numVerts = 3;
 for ( i = 0; i < ds->numIndexes; i += 3 )
 {

  for ( j = 0; j < 3; j++ )
  {

   v = ds->firstVert + bspDrawIndexes[ ds->firstIndex + i + j ];


   memcpy( &rw.verts[ j ], &yDrawVerts[ v ], sizeof( bspDrawVert_t ) );


   for ( k = 0; k < MAX_LIGHTMAPS; k++ )
   {
    radVertexLuxel = RAD_VERTEX_LUXEL( k, ds->firstVert + bspDrawIndexes[ ds->firstIndex + i + j ] );
    VectorCopy( radVertexLuxel, rw.verts[ j ].color[ k ] );
    rw.verts[ j ].color[ k ][ 3 ] = yDrawVerts[ v ].color[ k ][ 3 ];
   }
  }


  RadSubdivideDiffuseLight( lightmapNum, ds, lm, si, scale, subdivide, qtrue, &rw, cw );
 }
}
