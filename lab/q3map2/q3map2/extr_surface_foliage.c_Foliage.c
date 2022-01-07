
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_12__ ;


typedef int vec3_t ;
struct TYPE_24__ {TYPE_4__* foliage; } ;
typedef TYPE_1__ shaderInfo_t ;
struct TYPE_25__ {int width; int height; TYPE_5__* verts; } ;
typedef TYPE_2__ mesh_t ;
struct TYPE_26__ {int type; int numIndexes; size_t* indexes; int patchWidth; int patchHeight; int numFoliageInstances; int numVerts; TYPE_5__* verts; int fogNum; int lightmapScale; int recvShadows; int castShadows; int entityNum; TYPE_1__* shaderInfo; } ;
typedef TYPE_3__ mapDrawSurface_t ;
typedef int m4x4_t ;
struct TYPE_27__ {int model; int scale; struct TYPE_27__* next; } ;
typedef TYPE_4__ foliage_t ;
struct TYPE_28__ {int** color; int normal; int xyz; } ;
typedef TYPE_5__ bspDrawVert_t ;
struct TYPE_23__ {int normal; int xyz; } ;


 int FreeMesh (TYPE_2__*) ;
 int InsertModel (int ,int ,int ,int *,int *,int ,int ,int ,int ,int ) ;
 int MAX_LIGHTMAPS ;
 int PutMeshOnCurve (TYPE_2__) ;
 TYPE_2__* RemoveLinearMeshColumnsRows (TYPE_2__*) ;
 int SURFACE_FOLIAGE ;




 int SubdivideFoliageTriangle_r (TYPE_3__*,TYPE_4__*,TYPE_5__**) ;
 TYPE_2__* SubdivideMesh (TYPE_2__,int,int) ;
 int VectorCopy (int ,int ) ;
 int VectorSet (int ,int ,int ,int ) ;
 TYPE_12__* foliageInstances ;
 int free (TYPE_5__*) ;
 int m4x4_scale_for_vec3 (int ,int ) ;
 TYPE_3__* mapDrawSurfs ;
 int memcpy (TYPE_5__*,TYPE_5__*,int) ;
 int memset (TYPE_5__*,int ,int) ;
 int numFoliageInstances ;
 int numMapDrawSurfs ;
 TYPE_5__* safe_malloc (int) ;

void Foliage( mapDrawSurface_t *src ){
 int i, j, k, x, y, pw[ 5 ], r, oldNumMapDrawSurfs;
 mapDrawSurface_t *ds;
 shaderInfo_t *si;
 foliage_t *foliage;
 mesh_t srcMesh, *subdivided, *mesh;
 bspDrawVert_t *verts, *dv[ 3 ], *fi;
 vec3_t scale;
 m4x4_t transform;



 si = src->shaderInfo;
 if ( si == ((void*)0) || si->foliage == ((void*)0) ) {
  return;
 }


 for ( foliage = si->foliage; foliage != ((void*)0); foliage = foliage->next )
 {

  numFoliageInstances = 0;


  switch ( src->type )
  {
  case 130:
  case 131:
  case 128:

   verts = src->verts;


   for ( i = 0; i < src->numIndexes; i += 3 )
   {
    dv[ 0 ] = &verts[ src->indexes[ i ] ];
    dv[ 1 ] = &verts[ src->indexes[ i + 1 ] ];
    dv[ 2 ] = &verts[ src->indexes[ i + 2 ] ];
    SubdivideFoliageTriangle_r( src, foliage, dv );
   }
   break;

  case 129:

   srcMesh.width = src->patchWidth;
   srcMesh.height = src->patchHeight;
   srcMesh.verts = src->verts;
   subdivided = SubdivideMesh( srcMesh, 8, 512 );


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


     dv[ 0 ] = &verts[ pw[ r + 0 ] ];
     dv[ 1 ] = &verts[ pw[ r + 1 ] ];
     dv[ 2 ] = &verts[ pw[ r + 2 ] ];
     SubdivideFoliageTriangle_r( src, foliage, dv );


     dv[ 0 ] = &verts[ pw[ r + 0 ] ];
     dv[ 1 ] = &verts[ pw[ r + 2 ] ];
     dv[ 2 ] = &verts[ pw[ r + 3 ] ];
     SubdivideFoliageTriangle_r( src, foliage, dv );
    }
   }


   FreeMesh( mesh );
   break;

  default:
   break;
  }


  if ( numFoliageInstances < 1 ) {
   continue;
  }


  oldNumMapDrawSurfs = numMapDrawSurfs;


  VectorSet( scale, foliage->scale, foliage->scale, foliage->scale );
  m4x4_scale_for_vec3( transform, scale );


  InsertModel( foliage->model, 0, transform, ((void*)0), ((void*)0), src->entityNum, src->castShadows, src->recvShadows, 0, src->lightmapScale );


  for ( i = oldNumMapDrawSurfs; i < numMapDrawSurfs; i++ )
  {

   ds = &mapDrawSurfs[ i ];


   ds->type = SURFACE_FOLIAGE;
   ds->numFoliageInstances = numFoliageInstances;


   ds->patchWidth = ds->numFoliageInstances;
   ds->patchHeight = ds->numVerts;


   ds->fogNum = src->fogNum;


   verts = safe_malloc( ( ds->numVerts + ds->numFoliageInstances ) * sizeof( *verts ) );
   memset( verts, 0, ( ds->numVerts + ds->numFoliageInstances ) * sizeof( *verts ) );
   memcpy( verts, ds->verts, ds->numVerts * sizeof( *verts ) );
   free( ds->verts );
   ds->verts = verts;


   for ( j = 0; j < ds->numFoliageInstances; j++ )
   {

    fi = &ds->verts[ ds->numVerts + j ];


    VectorCopy( foliageInstances[ j ].xyz, fi->xyz );
    VectorCopy( foliageInstances[ j ].normal, fi->normal );


    for ( k = 0; k < MAX_LIGHTMAPS; k++ )
    {
     fi->color[ k ][ 0 ] = 255;
     fi->color[ k ][ 1 ] = 255;
     fi->color[ k ][ 2 ] = 255;
     fi->color[ k ][ 3 ] = 255;
    }
   }


   ds->numVerts += ds->numFoliageInstances;
  }
 }
}
