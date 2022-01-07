
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_12__ ;


typedef float* vec4_t ;
typedef float* vec3_t ;
struct TYPE_25__ {float* stFlat; float** vecs; scalar_t__ tcGen; scalar_t__ indexed; } ;
typedef TYPE_1__ shaderInfo_t ;
typedef scalar_t__ qboolean ;
struct TYPE_27__ {int width; int height; TYPE_9__* verts; } ;
struct TYPE_26__ {int celShader; int maxIterations; int longestCurve; int lightmapScale; int recvShadows; int castShadows; int entityNum; TYPE_12__* im; int eMaxs; int eMins; TYPE_1__* shaderInfo; TYPE_3__ mesh; } ;
typedef TYPE_2__ parseMesh_t ;
typedef TYPE_3__ mesh_t ;
struct TYPE_28__ {int patchWidth; int patchHeight; int numVerts; int fogNum; int planeNum; float** lightmapVecs; int celShader; TYPE_6__* verts; int maxIterations; int longestCurve; int lightmapScale; TYPE_2__* mapMesh; TYPE_1__* shaderInfo; int recvShadows; int castShadows; int entityNum; } ;
typedef TYPE_4__ mapDrawSurface_t ;
struct TYPE_29__ {int origin; } ;
typedef TYPE_5__ entity_t ;
typedef size_t byte ;
struct TYPE_30__ {float* normal; float* st; float* xyz; int** color; } ;
typedef TYPE_6__ bspDrawVert_t ;
struct TYPE_31__ {float* normal; float* xyz; } ;
struct TYPE_24__ {float* offsets; } ;


 TYPE_4__* AllocDrawSurface (int ) ;
 TYPE_3__* CopyMesh (TYPE_3__*) ;
 float DotProduct (float*,float*) ;
 scalar_t__ EQUAL_EPSILON ;
 int FindFloatPlane (float*,float,int,float**) ;
 int FreeMesh (TYPE_3__*) ;
 TYPE_1__* GetIndexedShader (TYPE_1__*,TYPE_12__*,int,size_t*) ;
 size_t GetShaderIndexForPoint (TYPE_12__*,int ,int ,float*) ;
 int MAX_EXPANDED_AXIS ;
 int MAX_LIGHTMAPS ;
 int MakeMeshNormals (TYPE_3__) ;
 int PutMeshOnCurve (TYPE_3__) ;
 int SURFACE_PATCH ;
 int Sys_Printf (char*) ;
 int VectorAdd (float*,int ,float*) ;
 scalar_t__ VectorCompare (float*,float*) ;
 int VectorCopy (float*,float*) ;
 float VectorLength (float*) ;
 scalar_t__ fabs (float) ;
 scalar_t__ flat ;
 int memcpy (TYPE_6__*,TYPE_9__*,int) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;
 TYPE_6__* safe_malloc (int) ;

mapDrawSurface_t *DrawSurfaceForMesh( entity_t *e, parseMesh_t *p, mesh_t *mesh ){
 int i, k, numVerts;
 vec4_t plane;
 qboolean planar;
 float dist;
 mapDrawSurface_t *ds;
 shaderInfo_t *si, *parent;
 bspDrawVert_t *dv;
 vec3_t vTranslated;
 mesh_t *copy;
 qboolean indexed;
 byte shaderIndexes[ MAX_EXPANDED_AXIS * MAX_EXPANDED_AXIS ];
 float offsets[ MAX_EXPANDED_AXIS * MAX_EXPANDED_AXIS ];



 if ( mesh == ((void*)0) ) {
  mesh = &p->mesh;
 }
 si = p->shaderInfo;
 if ( mesh == ((void*)0) || si == ((void*)0) ) {
  return ((void*)0);
 }


 numVerts = mesh->width * mesh->height;






 copy = CopyMesh( mesh );


 MakeMeshNormals( *copy );
 for ( i = 0; i < numVerts; i++ )
  VectorCopy( copy->verts[ i ].normal, mesh->verts[ i ].normal );


 PutMeshOnCurve( *copy );


 MakeMeshNormals( *copy );
 for ( i = 0; i < numVerts; i++ )
 {

  if ( DotProduct( copy->verts[ i ].normal, mesh->verts[ i ].normal ) < 0.75f ) {
   VectorCopy( copy->verts[ i ].normal, mesh->verts[ i ].normal );
  }
 }


 FreeMesh( copy );


 if ( si->indexed && p->im != ((void*)0) ) {

  indexed = qtrue;


  for ( i = 0; i < numVerts; i++ )
  {
   shaderIndexes[ i ] = GetShaderIndexForPoint( p->im, p->eMins, p->eMaxs, mesh->verts[ i ].xyz );
   offsets[ i ] = p->im->offsets[ shaderIndexes[ i ] ];
  }


  parent = si;
  si = GetIndexedShader( parent, p->im, numVerts, shaderIndexes );
 }
 else{
  indexed = qfalse;
 }



 ds = AllocDrawSurface( SURFACE_PATCH );
 ds->entityNum = p->entityNum;
 ds->castShadows = p->castShadows;
 ds->recvShadows = p->recvShadows;

 ds->shaderInfo = si;
 ds->mapMesh = p;
 ds->lightmapScale = p->lightmapScale;
 ds->patchWidth = mesh->width;
 ds->patchHeight = mesh->height;
 ds->numVerts = ds->patchWidth * ds->patchHeight;
 ds->verts = safe_malloc( ds->numVerts * sizeof( *ds->verts ) );
 memcpy( ds->verts, mesh->verts, ds->numVerts * sizeof( *ds->verts ) );

 ds->fogNum = -1;
 ds->planeNum = -1;

 ds->longestCurve = p->longestCurve;
 ds->maxIterations = p->maxIterations;


 VectorCopy( mesh->verts[ 0 ].normal, plane );
 plane[ 3 ] = DotProduct( mesh->verts[ 0 ].xyz, plane );
 planar = qtrue;


 if ( VectorLength( plane ) < 0.001f ) {
  Sys_Printf( "DrawSurfaceForMesh: bogus plane\n" );
 }


 for ( i = 1; i < ds->numVerts && planar; i++ )
 {

  if ( VectorCompare( plane, mesh->verts[ i ].normal ) == qfalse ) {
   planar = qfalse;
  }


  dist = DotProduct( mesh->verts[ i ].xyz, plane ) - plane[ 3 ];
  if ( fabs( dist ) > EQUAL_EPSILON ) {
   planar = qfalse;
  }
 }


 if ( planar ) {

  ds->planeNum = FindFloatPlane( plane, plane[ 3 ], 1, &mesh->verts[ 0 ].xyz );
  VectorCopy( plane, ds->lightmapVecs[ 2 ] );


  for ( i = 0; i < ds->numVerts; i++ )
   VectorCopy( plane, ds->verts[ i ].normal );
 }


 for ( i = 0; i < ds->numVerts; i++ )
 {

  dv = &ds->verts[ i ];


  if ( flat ) {
   dv->st[ 0 ] = si->stFlat[ 0 ];
   dv->st[ 1 ] = si->stFlat[ 1 ];
  }


  else if ( si->tcGen ) {

   VectorAdd( dv->xyz, e->origin, vTranslated );
   dv->st[ 0 ] = DotProduct( si->vecs[ 0 ], vTranslated );
   dv->st[ 1 ] = DotProduct( si->vecs[ 1 ], vTranslated );
  }


  for ( k = 0; k < MAX_LIGHTMAPS; k++ )
  {
   dv->color[ k ][ 0 ] = 255;
   dv->color[ k ][ 1 ] = 255;
   dv->color[ k ][ 2 ] = 255;


   dv->color[ k ][ 3 ] = ( indexed ? shaderIndexes[ i ] : 255 );
  }


  if ( indexed ) {
   dv->xyz[ 2 ] += offsets[ i ];
  }
 }


 ds->celShader = p->celShader;


 return ds;
}
