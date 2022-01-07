
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_28__ {TYPE_2__* headnode; } ;
typedef TYPE_1__ tree_t ;
struct TYPE_29__ {TYPE_4__* brushlist; int planenum; } ;
typedef TYPE_2__ node_t ;
struct TYPE_30__ {TYPE_4__* brushes; int numBrushes; int firstBrush; int firstDrawSurf; } ;
typedef TYPE_3__ entity_t ;
struct TYPE_31__ {struct TYPE_31__* next; } ;
typedef TYPE_4__ brush_t ;


 int AddEntitySurfaceModels (TYPE_3__*) ;
 int AddTriangleModels (TYPE_3__*) ;
 TYPE_2__* AllocNode () ;
 TYPE_1__* AllocTree () ;
 int BeginModel () ;
 int ClassifyEntitySurfaces (TYPE_3__*) ;
 int ClearMetaTriangles () ;
 int ClipSidesIntoTree (TYPE_3__*,TYPE_1__*) ;
 TYPE_4__* CopyBrush (TYPE_4__*) ;
 int EmitBrushes (TYPE_4__*,int *,int *) ;
 int EndModel (TYPE_3__*,TYPE_2__*) ;
 int FilterDrawsurfsIntoTree (TYPE_3__*,TYPE_1__*) ;
 int FixBrushSides (TYPE_3__*) ;
 int FixMetaTJunctions () ;
 int FixTJunctions (TYPE_3__*) ;
 int FreeTree (TYPE_1__*) ;
 int MakeEntityDecals (TYPE_3__*) ;
 int MakeEntityMetaTriangles (TYPE_3__*) ;
 int MergeMetaTriangles () ;
 int PLANENUM_LEAF ;
 int PatchMapDrawSurfs (TYPE_3__*) ;
 int SmoothMetaTriangles () ;
 int SubdivideFaceSurfaces (TYPE_3__*,TYPE_1__*) ;
 TYPE_3__* entities ;
 size_t mapEntityNum ;
 int nosubdivide ;
 int notjunc ;
 int numMapDrawSurfs ;

void ProcessSubModel( void ){
 entity_t *e;
 tree_t *tree;
 brush_t *b, *bc;
 node_t *node;



 BeginModel();
 e = &entities[ mapEntityNum ];
 e->firstDrawSurf = numMapDrawSurfs;


 ClearMetaTriangles();


 PatchMapDrawSurfs( e );


 node = AllocNode();
 node->planenum = PLANENUM_LEAF;
 tree = AllocTree();
 tree->headnode = node;


 ClipSidesIntoTree( e, tree );


 AddTriangleModels( e );


 AddEntitySurfaceModels( e );


 EmitBrushes( e->brushes, &e->firstBrush, &e->numBrushes );


 for ( b = e->brushes; b; b = b->next )
 {
  bc = CopyBrush( b );
  bc->next = node->brushlist;
  node->brushlist = bc;
 }


 if ( !nosubdivide ) {
  SubdivideFaceSurfaces( e, tree );
 }


 if ( !notjunc ) {
  FixTJunctions( e );
 }


 ClassifyEntitySurfaces( e );


 MakeEntityDecals( e );


 MakeEntityMetaTriangles( e );
 SmoothMetaTriangles();
 FixMetaTJunctions();
 MergeMetaTriangles();


 FilterDrawsurfsIntoTree( e, tree );


 FixBrushSides( e );


 EndModel( e, node );
 FreeTree( tree );
}
