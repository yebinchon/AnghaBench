
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {size_t planenum; } ;
typedef TYPE_1__ side_t ;
typedef int qboolean ;
struct TYPE_23__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_24__ {int width; int height; TYPE_4__* verts; } ;
typedef TYPE_3__ mesh_t ;
struct TYPE_25__ {int patchWidth; int patchHeight; int numVerts; struct TYPE_25__* verts; } ;
typedef TYPE_4__ mapDrawSurface_t ;
typedef int entity_t ;
struct TYPE_26__ {TYPE_1__* sides; } ;
typedef TYPE_5__ brush_t ;


 TYPE_4__* AllocDrawSurface (int ) ;
 TYPE_3__* DrawSurfToMesh (TYPE_4__*) ;
 int Error (char*) ;
 int FreeMesh (TYPE_3__*) ;
 int InvertMesh (TYPE_3__*) ;
 int MAX_BRUSH_SIDES ;
 int SURFACE_PATCH ;
 int SplitMeshByPlane (TYPE_3__*,int ,int ,TYPE_3__**,TYPE_3__**) ;
 TYPE_3__* TransposeMesh (TYPE_3__*) ;
 int free (TYPE_4__*) ;
 TYPE_2__* mapplanes ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 int numFogPatchFragments ;
 int qfalse ;
 int qtrue ;
 void* safe_malloc (int) ;

qboolean ChopPatchSurfaceByBrush( entity_t *e, mapDrawSurface_t *ds, brush_t *b ){
 int i, j;
 side_t *s;
 plane_t *plane;
 mesh_t *outside[MAX_BRUSH_SIDES];
 int numOutside;
 mesh_t *m, *front, *back;
 mapDrawSurface_t *newds;

 m = DrawSurfToMesh( ds );
 numOutside = 0;




 for ( i = 4 ; i <= 5 ; i++ ) {
  s = &b->sides[ i ];
  plane = &mapplanes[ s->planenum ];

  SplitMeshByPlane( m, plane->normal, plane->dist, &front, &back );

  if ( !back ) {

   for ( j = 0 ; j < numOutside ; j++ ) {
    FreeMesh( outside[j] );
   }
   return qfalse;
  }
  m = back;

  if ( front ) {
   if ( numOutside == MAX_BRUSH_SIDES ) {
    Error( "MAX_BRUSH_SIDES" );
   }
   outside[ numOutside ] = front;
   numOutside++;
  }
 }


 numFogPatchFragments += numOutside;
 for ( i = 0; i < numOutside; i++ )
 {

  outside[ i ] = TransposeMesh( outside[ i ] );
  InvertMesh( outside[ i ] );


  newds = AllocDrawSurface( SURFACE_PATCH );
  memcpy( newds, ds, sizeof( *ds ) );
  newds->patchWidth = outside[ i ]->width;
  newds->patchHeight = outside[ i ]->height;
  newds->numVerts = outside[ i ]->width * outside[ i ]->height;
  newds->verts = safe_malloc( newds->numVerts * sizeof( *newds->verts ) );
  memcpy( newds->verts, outside[ i ]->verts, newds->numVerts * sizeof( *newds->verts ) );


  FreeMesh( outside[ i ] );
 }



 if ( numOutside > 0 ) {

  m = TransposeMesh( m );
  InvertMesh( m );


  ds->patchWidth = m->width;
  ds->patchHeight = m->height;
  ds->numVerts = m->width * m->height;
  free( ds->verts );
  ds->verts = safe_malloc( ds->numVerts * sizeof( *ds->verts ) );
  memcpy( ds->verts, m->verts, ds->numVerts * sizeof( *ds->verts ) );
 }


 FreeMesh( m );
 return qtrue;
}
