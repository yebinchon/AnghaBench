
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
typedef int shaderInfo_t ;
struct TYPE_12__ {int normal; int dist; } ;
struct TYPE_14__ {TYPE_1__ plane; int side; TYPE_4__** nodes; TYPE_2__* winding; struct TYPE_14__** next; } ;
typedef TYPE_3__ portal_t ;
struct TYPE_15__ {scalar_t__ planenum; TYPE_3__* portals; scalar_t__ opaque; struct TYPE_15__** children; } ;
typedef TYPE_4__ node_t ;
struct TYPE_16__ {int** lightmapVecs; int fogNum; int numVerts; TYPE_6__* verts; int planeNum; int sideRef; int planar; int * shaderInfo; } ;
typedef TYPE_5__ mapDrawSurface_t ;
struct TYPE_17__ {int* xyz; int* normal; int** color; scalar_t__* st; } ;
typedef TYPE_6__ bspDrawVert_t ;


 TYPE_5__* AllocDrawSurface (int ) ;
 int AllocSideRef (int ,int *) ;
 int Error (char*,int) ;
 int FindFloatPlane (int ,int ,int ,int *) ;
 int MAX_LIGHTMAPS ;
 scalar_t__ PLANENUM_LEAF ;
 scalar_t__ PortalPassable (TYPE_3__*) ;
 int SURFACE_FACE ;
 int VectorCopy (int ,int*) ;
 int * debugColors ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ qfalse ;
 int qtrue ;
 TYPE_6__* safe_malloc (int) ;

__attribute__((used)) static void MakeDebugPortalSurfs_r( node_t *node, shaderInfo_t *si ){
 int i, k, c, s;
 portal_t *p;
 winding_t *w;
 mapDrawSurface_t *ds;
 bspDrawVert_t *dv;



 if ( node->planenum != PLANENUM_LEAF ) {
  MakeDebugPortalSurfs_r( node->children[ 0 ], si );
  MakeDebugPortalSurfs_r( node->children[ 1 ], si );
  return;
 }


 if ( node->opaque ) {
  return;
 }


 for ( c = 0, p = node->portals; p != ((void*)0); c++, p = p->next[ s ] )
 {

  w = p->winding;
  s = ( p->nodes[ 1 ] == node );


  if ( w && p->nodes[ 0 ] == node ) {

   if ( PortalPassable( p ) == qfalse ) {
    continue;
   }


   if ( w->numpoints > 64 ) {
    Error( "MakePortalSurfs_r: w->numpoints = %d", w->numpoints );
   }


   ds = AllocDrawSurface( SURFACE_FACE );
   ds->shaderInfo = si;
   ds->planar = qtrue;
   ds->sideRef = AllocSideRef( p->side, ((void*)0) );
   ds->planeNum = FindFloatPlane( p->plane.normal, p->plane.dist, 0, ((void*)0) );
   VectorCopy( p->plane.normal, ds->lightmapVecs[ 2 ] );
   ds->fogNum = -1;
   ds->numVerts = w->numpoints;
   ds->verts = safe_malloc( ds->numVerts * sizeof( *ds->verts ) );
   memset( ds->verts, 0, ds->numVerts * sizeof( *ds->verts ) );


   for ( i = 0; i < ds->numVerts; i++ )
   {

    dv = ds->verts + i;


    VectorCopy( w->p[ i ], dv->xyz );
    VectorCopy( p->plane.normal, dv->normal );
    dv->st[ 0 ] = 0;
    dv->st[ 1 ] = 0;
    for ( k = 0; k < MAX_LIGHTMAPS; k++ )
    {
     VectorCopy( debugColors[ c % 12 ], dv->color[ k ] );
     dv->color[ k ][ 3 ] = 32;
    }
   }
  }
 }
}
