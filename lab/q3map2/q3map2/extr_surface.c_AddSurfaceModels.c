
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {struct TYPE_18__* next; } ;
typedef TYPE_2__ surfaceModel_t ;
struct TYPE_19__ {int width; TYPE_5__* verts; int height; } ;
typedef TYPE_3__ mesh_t ;
struct TYPE_20__ {int type; int numVerts; int patchWidth; int numIndexes; size_t* indexes; TYPE_5__* verts; int longestCurve; int patchHeight; TYPE_1__* shaderInfo; } ;
typedef TYPE_4__ mapDrawSurface_t ;
typedef int centroid ;
struct TYPE_21__ {int* xyz; int* normal; int* st; float** color; } ;
typedef TYPE_5__ bspDrawVert_t ;
struct TYPE_17__ {TYPE_2__* surfaceModel; } ;


 int AddSurfaceModelsToTriangle_r (TYPE_4__*,TYPE_2__*,TYPE_5__**) ;
 int FreeMesh (TYPE_3__*) ;
 int IterationsForCurve (int ,int ) ;
 int PutMeshOnCurve (TYPE_3__) ;
 TYPE_3__* RemoveLinearMeshColumnsRows (TYPE_3__*) ;






 TYPE_3__* SubdivideMesh2 (TYPE_3__,int) ;
 int VectorAdd (int*,int*,int*) ;
 int VectorCopy (int*,int*) ;
 float VectorNormalize (int*,int*) ;
 int memset (TYPE_5__*,int ,int) ;
 int patchSubdivisions ;

int AddSurfaceModels( mapDrawSurface_t *ds ){
 surfaceModel_t *model;
 int i, x, y, n, pw[ 5 ], r, localNumSurfaceModels, iterations;
 mesh_t src, *mesh, *subdivided;
 bspDrawVert_t centroid, *tri[ 3 ];
 float alpha;



 if ( ds == ((void*)0) || ds->shaderInfo == ((void*)0) || ds->shaderInfo->surfaceModel == ((void*)0) ) {
  return 0;
 }


 localNumSurfaceModels = 0;


 for ( model = ds->shaderInfo->surfaceModel; model != ((void*)0); model = model->next )
 {

  switch ( ds->type )
  {

  case 132:
  case 133:

   memset( &centroid, 0, sizeof( centroid ) );
   alpha = 0.0f;


   for ( i = 0; i < ds->numVerts; i++ )
   {
    VectorAdd( centroid.xyz, ds->verts[ i ].xyz, centroid.xyz );
    VectorAdd( centroid.normal, ds->verts[ i ].normal, centroid.normal );
    centroid.st[ 0 ] += ds->verts[ i ].st[ 0 ];
    centroid.st[ 1 ] += ds->verts[ i ].st[ 1 ];
    alpha += ds->verts[ i ].color[ 0 ][ 3 ];
   }


   centroid.xyz[ 0 ] /= ds->numVerts;
   centroid.xyz[ 1 ] /= ds->numVerts;
   centroid.xyz[ 2 ] /= ds->numVerts;
   if ( VectorNormalize( centroid.normal, centroid.normal ) == 0.0f ) {
    VectorCopy( ds->verts[ 0 ].normal, centroid.normal );
   }
   centroid.st[ 0 ] /= ds->numVerts;
   centroid.st[ 1 ] /= ds->numVerts;
   alpha /= ds->numVerts;
   centroid.color[ 0 ][ 0 ] = 0xFF;
   centroid.color[ 0 ][ 1 ] = 0xFF;
   centroid.color[ 0 ][ 2 ] = 0xFF;
   centroid.color[ 0 ][ 2 ] = ( alpha > 255.0f ? 0xFF : alpha );


   tri[ 0 ] = &centroid;


   for ( i = 0; i < ds->numVerts; i++ )
   {

    tri[ 1 ] = &ds->verts[ i ];
    tri[ 2 ] = &ds->verts[ ( i + 1 ) % ds->numVerts ];


    n = AddSurfaceModelsToTriangle_r( ds, model, tri );
    if ( n < 0 ) {
     return n;
    }
    localNumSurfaceModels += n;
   }
   break;


  case 129:

   src.width = ds->patchWidth;
   src.height = ds->patchHeight;
   src.verts = ds->verts;

   iterations = IterationsForCurve( ds->longestCurve, patchSubdivisions );
   subdivided = SubdivideMesh2( src, iterations );


   PutMeshOnCurve( *subdivided );
   mesh = RemoveLinearMeshColumnsRows( subdivided );
   FreeMesh( subdivided );


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


     tri[ 0 ] = &mesh->verts[ pw[ r + 0 ] ];
     tri[ 1 ] = &mesh->verts[ pw[ r + 1 ] ];
     tri[ 2 ] = &mesh->verts[ pw[ r + 2 ] ];
     n = AddSurfaceModelsToTriangle_r( ds, model, tri );
     if ( n < 0 ) {
      return n;
     }
     localNumSurfaceModels += n;


     tri[ 0 ] = &mesh->verts[ pw[ r + 0 ] ];
     tri[ 1 ] = &mesh->verts[ pw[ r + 2 ] ];
     tri[ 2 ] = &mesh->verts[ pw[ r + 3 ] ];
     n = AddSurfaceModelsToTriangle_r( ds, model, tri );
     if ( n < 0 ) {
      return n;
     }
     localNumSurfaceModels += n;
    }
   }


   FreeMesh( mesh );
   break;


  case 128:
  case 131:
  case 130:

   for ( i = 0; i < ds->numIndexes; i += 3 )
   {
    tri[ 0 ] = &ds->verts[ ds->indexes[ i ] ];
    tri[ 1 ] = &ds->verts[ ds->indexes[ i + 1 ] ];
    tri[ 2 ] = &ds->verts[ ds->indexes[ i + 2 ] ];
    n = AddSurfaceModelsToTriangle_r( ds, model, tri );
    if ( n < 0 ) {
     return n;
    }
    localNumSurfaceModels += n;
   }
   break;


  default:
   break;
  }
 }


 return localNumSurfaceModels;
}
