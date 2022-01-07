
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
struct TYPE_9__ {scalar_t__ planenum; int maxs; int mins; int sky; struct TYPE_9__** children; } ;
typedef TYPE_2__ node_t ;
struct TYPE_10__ {int numVerts; TYPE_1__* verts; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_8__ {int xyz; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int AddReferenceToLeaf (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ PLANENUM_LEAF ;

int AddReferenceToTree_r( mapDrawSurface_t *ds, node_t *node, qboolean skybox ){
 int i, refs = 0;



 if ( node == ((void*)0) ) {
  return 0;
 }


 if ( node->planenum != PLANENUM_LEAF ) {

  refs += AddReferenceToTree_r( ds, node->children[ 0 ], skybox );
  refs += AddReferenceToTree_r( ds, node->children[ 1 ], skybox );
  return refs;
 }


 if ( skybox ) {

  if ( !node->sky ) {
   return 0;
  }


  for ( i = 0; i < ds->numVerts; i++ )
   AddPointToBounds( ds->verts[ i ].xyz, node->mins, node->maxs );
 }


 return AddReferenceToLeaf( ds, node );
}
