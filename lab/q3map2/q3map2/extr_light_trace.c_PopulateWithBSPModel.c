
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_12__ ;


typedef int tw ;
struct TYPE_27__ {int numVerts; TYPE_1__* v; int infoNum; } ;
typedef TYPE_3__ traceWinding_t ;
struct TYPE_28__ {scalar_t__ surfaceNum; scalar_t__ castShadows; TYPE_2__* si; } ;
typedef TYPE_4__ traceInfo_t ;
struct TYPE_29__ {scalar_t__ parentSurfaceNum; int patchIterations; TYPE_2__* si; scalar_t__ castShadows; } ;
typedef TYPE_5__ surfaceInfo_t ;
struct TYPE_30__ {int width; int height; TYPE_8__* verts; } ;
typedef TYPE_6__ mesh_t ;
typedef int * m4x4_t ;
struct TYPE_31__ {int numBSPSurfaces; int firstBSPSurface; scalar_t__ firstBSPBrush; } ;
typedef TYPE_7__ bspModel_t ;
struct TYPE_32__ {int st; int xyz; } ;
typedef TYPE_8__ bspDrawVert_t ;
struct TYPE_33__ {int surfaceType; size_t shaderNum; int patchWidth; size_t firstVert; size_t firstIndex; int numIndexes; int patchHeight; } ;
typedef TYPE_9__ bspDrawSurface_t ;
struct TYPE_26__ {int compileFlags; } ;
struct TYPE_25__ {int xyz; int st; } ;
struct TYPE_24__ {int contentFlags; int surfaceFlags; } ;


 int AddTraceInfo (TYPE_4__*) ;
 int C_ALPHASHADOW ;
 int C_LIGHTFILTER ;
 int C_NODRAW ;
 int C_SKY ;
 int C_TRANSLUCENT ;
 int FilterTraceWindingIntoNodes_r (TYPE_3__*,int) ;
 int FreeMesh (TYPE_6__*) ;



 int PutMeshOnCurve (TYPE_6__) ;
 TYPE_6__* RemoveLinearMeshColumnsRows (TYPE_6__*) ;
 TYPE_6__* SubdivideMesh2 (TYPE_6__,int ) ;
 int Vector2Copy (int ,int ) ;
 int VectorCopy (int ,int ) ;
 int* bspDrawIndexes ;
 TYPE_9__* bspDrawSurfaces ;
 TYPE_8__* bspDrawVerts ;
 TYPE_12__* bspShaders ;
 int headNodeNum ;
 int m4x4_transform_point (int *,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int noDrawContentFlags ;
 int noDrawSurfaceFlags ;
 scalar_t__ patchShadows ;
 scalar_t__ qfalse ;
 int skyboxNodeNum ;
 TYPE_5__* surfaceInfos ;

__attribute__((used)) static void PopulateWithBSPModel( bspModel_t *model, m4x4_t transform ){
 int i, j, x, y, pw[ 5 ], r, nodeNum;
 bspDrawSurface_t *ds;
 surfaceInfo_t *info;
 bspDrawVert_t *verts;
 int *indexes;
 mesh_t srcMesh, *mesh, *subdivided;
 traceInfo_t ti;
 traceWinding_t tw;



 if ( model == ((void*)0) || transform == ((void*)0) ) {
  return;
 }


 for ( i = 0; i < model->numBSPSurfaces; i++ )
 {

  ds = &bspDrawSurfaces[ model->firstBSPSurface + i ];
  info = &surfaceInfos[ model->firstBSPSurface + i ];
  if ( info->si == ((void*)0) ) {
   continue;
  }


  if ( !info->castShadows ) {
   continue;
  }


  if ( ds->surfaceType == 130 && patchShadows == qfalse ) {
   continue;
  }


  if ( ( bspShaders[ ds->shaderNum ].contentFlags & noDrawContentFlags ) ||
    ( bspShaders[ ds->shaderNum ].surfaceFlags & noDrawSurfaceFlags ) ) {
   continue;
  }


  if ( ( info->si->compileFlags & C_NODRAW ) ) {
   continue;
  }
  if ( ( info->si->compileFlags & C_TRANSLUCENT ) &&
    !( info->si->compileFlags & C_ALPHASHADOW ) &&
    !( info->si->compileFlags & C_LIGHTFILTER ) ) {
   continue;
  }


  ti.si = info->si;
  ti.castShadows = info->castShadows;
  ti.surfaceNum = model->firstBSPBrush + i;


  if ( info->parentSurfaceNum >= 0 ) {
   nodeNum = skyboxNodeNum;


   if ( info->si->compileFlags & C_SKY ) {
    continue;
   }
  }
  else{
   nodeNum = headNodeNum;
  }


  memset( &tw, 0, sizeof( tw ) );
  tw.infoNum = AddTraceInfo( &ti );
  tw.numVerts = 3;


  switch ( ds->surfaceType )
  {

  case 130:

   srcMesh.width = ds->patchWidth;
   srcMesh.height = ds->patchHeight;
   srcMesh.verts = &bspDrawVerts[ ds->firstVert ];

   subdivided = SubdivideMesh2( srcMesh, info->patchIterations );


   PutMeshOnCurve( *subdivided );
   mesh = RemoveLinearMeshColumnsRows( subdivided );
   FreeMesh( subdivided );


   verts = mesh->verts;


   for ( y = 0; y < ( mesh->height - 1 ); y++ )
   {
    for ( x = 0; x < ( mesh->width - 1 ); x++ )
    {

     pw[ 0 ] = x + ( y * mesh->width );
     pw[ 1 ] = x + ( ( y + 1 ) * mesh->width );
     pw[ 2 ] = x + 1 + ( ( y + 1 ) * mesh->width );
     pw[ 3 ] = x + 1 + ( y * mesh->width );
     pw[ 4 ] = x + ( y * mesh->width );


     r = ( x + y ) & 1;


     VectorCopy( verts[ pw[ r + 0 ] ].xyz, tw.v[ 0 ].xyz );
     Vector2Copy( verts[ pw[ r + 0 ] ].st, tw.v[ 0 ].st );
     VectorCopy( verts[ pw[ r + 1 ] ].xyz, tw.v[ 1 ].xyz );
     Vector2Copy( verts[ pw[ r + 1 ] ].st, tw.v[ 1 ].st );
     VectorCopy( verts[ pw[ r + 2 ] ].xyz, tw.v[ 2 ].xyz );
     Vector2Copy( verts[ pw[ r + 2 ] ].st, tw.v[ 2 ].st );
     m4x4_transform_point( transform, tw.v[ 0 ].xyz );
     m4x4_transform_point( transform, tw.v[ 1 ].xyz );
     m4x4_transform_point( transform, tw.v[ 2 ].xyz );
     FilterTraceWindingIntoNodes_r( &tw, nodeNum );


     VectorCopy( verts[ pw[ r + 0 ] ].xyz, tw.v[ 0 ].xyz );
     Vector2Copy( verts[ pw[ r + 0 ] ].st, tw.v[ 0 ].st );
     VectorCopy( verts[ pw[ r + 2 ] ].xyz, tw.v[ 1 ].xyz );
     Vector2Copy( verts[ pw[ r + 2 ] ].st, tw.v[ 1 ].st );
     VectorCopy( verts[ pw[ r + 3 ] ].xyz, tw.v[ 2 ].xyz );
     Vector2Copy( verts[ pw[ r + 3 ] ].st, tw.v[ 2 ].st );
     m4x4_transform_point( transform, tw.v[ 0 ].xyz );
     m4x4_transform_point( transform, tw.v[ 1 ].xyz );
     m4x4_transform_point( transform, tw.v[ 2 ].xyz );
     FilterTraceWindingIntoNodes_r( &tw, nodeNum );
    }
   }


   FreeMesh( mesh );
   break;


  case 128:
  case 129:

   verts = &bspDrawVerts[ ds->firstVert ];
   indexes = &bspDrawIndexes[ ds->firstIndex ];


   for ( j = 0; j < ds->numIndexes; j += 3 )
   {
    VectorCopy( verts[ indexes[ j ] ].xyz, tw.v[ 0 ].xyz );
    Vector2Copy( verts[ indexes[ j ] ].st, tw.v[ 0 ].st );
    VectorCopy( verts[ indexes[ j + 1 ] ].xyz, tw.v[ 1 ].xyz );
    Vector2Copy( verts[ indexes[ j + 1 ] ].st, tw.v[ 1 ].st );
    VectorCopy( verts[ indexes[ j + 2 ] ].xyz, tw.v[ 2 ].xyz );
    Vector2Copy( verts[ indexes[ j + 2 ] ].st, tw.v[ 2 ].st );
    m4x4_transform_point( transform, tw.v[ 0 ].xyz );
    m4x4_transform_point( transform, tw.v[ 1 ].xyz );
    m4x4_transform_point( transform, tw.v[ 2 ].xyz );
    FilterTraceWindingIntoNodes_r( &tw, nodeNum );
   }
   break;


  default:
   break;
  }
 }
}
