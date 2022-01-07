
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int widthTable ;
typedef int vec3_t ;
struct TYPE_16__ {int patchIterations; } ;
typedef TYPE_1__ surfaceInfo_t ;
struct TYPE_17__ {int w; float sampleSize; int customWidth; int h; int customHeight; void** wrap; void* finished; } ;
typedef TYPE_2__ rawLightmap_t ;
typedef void* qboolean ;
struct TYPE_18__ {int width; int height; TYPE_4__* verts; } ;
typedef TYPE_3__ mesh_t ;
typedef int heightTable ;
struct TYPE_19__ {float** lightmap; int xyz; } ;
typedef TYPE_4__ bspDrawVert_t ;
struct TYPE_20__ {int patchWidth; int patchHeight; size_t firstVert; } ;
typedef TYPE_5__ bspDrawSurface_t ;


 int FreeMesh (TYPE_3__*) ;
 int MAX_EXPANDED_AXIS ;
 int PutMeshOnCurve (TYPE_3__) ;
 TYPE_3__* RemoveLinearMeshColumnsRows (TYPE_3__*) ;
 TYPE_3__* SubdivideMesh2 (TYPE_3__,int ) ;
 int VectorCompare (int ,int ) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_5__* bspDrawSurfaces ;
 void* ceil (float) ;
 int memset (float*,int ,int) ;
 int numPatchesLightmapped ;
 void* qfalse ;
 void* qtrue ;
 float superSample ;
 TYPE_1__* surfaceInfos ;
 TYPE_4__* yDrawVerts ;

qboolean AddPatchToRawLightmap( int num, rawLightmap_t *lm ){
 bspDrawSurface_t *ds;
 surfaceInfo_t *info;
 int x, y;
 bspDrawVert_t *verts, *a, *b;
 vec3_t delta;
 mesh_t src, *subdivided, *mesh;
 float sBasis, tBasis, s, t;
 float length, widthTable[ MAX_EXPANDED_AXIS ], heightTable[ MAX_EXPANDED_AXIS ];



 lm->finished = qtrue;


 ds = &bspDrawSurfaces[ num ];
 info = &surfaceInfos[ num ];


 src.width = ds->patchWidth;
 src.height = ds->patchHeight;
 src.verts = &yDrawVerts[ ds->firstVert ];

 subdivided = SubdivideMesh2( src, info->patchIterations );


 PutMeshOnCurve( *subdivided );
 mesh = RemoveLinearMeshColumnsRows( subdivided );
 FreeMesh( subdivided );


 verts = mesh->verts;
 memset( widthTable, 0, sizeof( widthTable ) );
 memset( heightTable, 0, sizeof( heightTable ) );
 for ( y = 0; y < mesh->height; y++ )
 {
  for ( x = 0; x < mesh->width; x++ )
  {

   if ( x + 1 < mesh->width ) {
    a = &verts[ ( y * mesh->width ) + x ];
    b = &verts[ ( y * mesh->width ) + x + 1 ];
    VectorSubtract( a->xyz, b->xyz, delta );
    length = VectorLength( delta );
    if ( length > widthTable[ x ] ) {
     widthTable[ x ] = length;
    }
   }


   if ( y + 1 < mesh->height ) {
    a = &verts[ ( y * mesh->width ) + x ];
    b = &verts[ ( ( y + 1 ) * mesh->width ) + x ];
    VectorSubtract( a->xyz, b->xyz, delta );
    length = VectorLength( delta );
    if ( length > heightTable[ y ] ) {
     heightTable[ y ] = length;
    }
   }
  }
 }


 length = 0;
 for ( x = 0; x < ( mesh->width - 1 ); x++ )
  length += widthTable[ x ];
 lm->w = lm->sampleSize != 0 ? ceil( length / lm->sampleSize ) + 1 : 0;
 if ( lm->w < ds->patchWidth ) {
  lm->w = ds->patchWidth;
 }
 if ( lm->w > lm->customWidth ) {
  lm->w = lm->customWidth;
 }
 sBasis = (float) ( lm->w - 1 ) / (float) ( ds->patchWidth - 1 );


 length = 0;
 for ( y = 0; y < ( mesh->height - 1 ); y++ )
  length += heightTable[ y ];
 lm->h = lm->sampleSize != 0 ? ceil( length / lm->sampleSize ) + 1 : 0;
 if ( lm->h < ds->patchHeight ) {
  lm->h = ds->patchHeight;
 }
 if ( lm->h > lm->customHeight ) {
  lm->h = lm->customHeight;
 }
 tBasis = (float) ( lm->h - 1 ) / (float) ( ds->patchHeight - 1 );


 FreeMesh( mesh );


 lm->wrap[ 0 ] = qtrue;
 lm->wrap[ 1 ] = qtrue;
 verts = &yDrawVerts[ ds->firstVert ];
 for ( y = 0; y < ds->patchHeight; y++ )
 {
  t = ( tBasis * y ) + 0.5f;
  for ( x = 0; x < ds->patchWidth; x++ )
  {
   s = ( sBasis * x ) + 0.5f;
   verts[ ( y * ds->patchWidth ) + x ].lightmap[ 0 ][ 0 ] = s * superSample;
   verts[ ( y * ds->patchWidth ) + x ].lightmap[ 0 ][ 1 ] = t * superSample;

   if ( y == 0 && !VectorCompare( verts[ x ].xyz, verts[ ( ( ds->patchHeight - 1 ) * ds->patchWidth ) + x ].xyz ) ) {
    lm->wrap[ 1 ] = qfalse;
   }
  }

  if ( !VectorCompare( verts[ ( y * ds->patchWidth ) ].xyz, verts[ ( y * ds->patchWidth ) + ( ds->patchWidth - 1 ) ].xyz ) ) {
   lm->wrap[ 0 ] = qfalse;
  }
 }
 numPatchesLightmapped++;


 return qtrue;
}
