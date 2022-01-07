
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
struct TYPE_17__ {int headnode; } ;
typedef TYPE_3__ tree_t ;
struct TYPE_18__ {int width; int height; TYPE_1__* verts; } ;
typedef TYPE_4__ mesh_t ;
struct TYPE_19__ {int patchWidth; int patchHeight; TYPE_1__* verts; } ;
typedef TYPE_5__ mapDrawSurface_t ;
struct TYPE_15__ {int xyz; } ;


 TYPE_2__* AllocWinding (int) ;
 int FILTER_SUBDIVISION ;
 scalar_t__ FilterPointIntoTree_r (int ,TYPE_5__*,int ) ;
 scalar_t__ FilterWindingIntoTree_r (TYPE_2__*,TYPE_5__*,int ) ;
 int FreeMesh (TYPE_4__*) ;
 TYPE_4__* SubdivideMesh (TYPE_4__,int ,int) ;
 int VectorCopy (int ,int ) ;

__attribute__((used)) static int FilterPatchIntoTree( mapDrawSurface_t *ds, tree_t *tree ){
 int i, x, y, refs;
 mesh_t src, *mesh;
 winding_t *w;



 src.width = ds->patchWidth;
 src.height = ds->patchHeight;
 src.verts = ds->verts;
 mesh = SubdivideMesh( src, FILTER_SUBDIVISION, 32 );



 refs = 0;
 for ( y = 0; y < ( mesh->height - 1 ); y++ )
 {
  for ( x = 0; x < ( mesh->width - 1 ); x++ )
  {

   w = AllocWinding( 3 );
   w->numpoints = 3;
   VectorCopy( mesh->verts[ y * mesh->width + x ].xyz, w->p[ 0 ] );
   VectorCopy( mesh->verts[ y * mesh->width + x + 1 ].xyz, w->p[ 1 ] );
   VectorCopy( mesh->verts[ ( y + 1 ) * mesh->width + x ].xyz, w->p[ 2 ] );
   refs += FilterWindingIntoTree_r( w, ds, tree->headnode );


   w = AllocWinding( 3 );
   w->numpoints = 3;
   VectorCopy( mesh->verts[ y * mesh->width + x + 1 ].xyz, w->p[ 0 ] );
   VectorCopy( mesh->verts[ ( y + 1 ) * mesh->width + x + 1 ].xyz, w->p[ 1 ] );
   VectorCopy( mesh->verts[ ( y + 1 ) * mesh->width + x ].xyz, w->p[ 2 ] );
   refs += FilterWindingIntoTree_r( w, ds, tree->headnode );
  }
 }


 for ( i = 0; i < ( mesh->width * mesh->height ); i++ )
  refs += FilterPointIntoTree_r( mesh->verts[ i ].xyz, ds, tree->headnode );


 FreeMesh( mesh );
 return refs;
}
