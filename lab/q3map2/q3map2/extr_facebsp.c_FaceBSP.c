
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_6__* headnode; int maxs; int mins; } ;
typedef TYPE_2__ tree_t ;
struct TYPE_12__ {TYPE_1__* w; struct TYPE_12__* next; } ;
typedef TYPE_3__ face_t ;
struct TYPE_13__ {int maxs; int mins; } ;
struct TYPE_10__ {int numpoints; int * p; } ;


 int AddPointToBounds (int ,int ,int ) ;
 TYPE_6__* AllocNode () ;
 TYPE_2__* AllocTree () ;
 int BuildFaceTree_r (TYPE_6__*,TYPE_3__*) ;
 int SYS_VRB ;
 int Sys_FPrintf (int ,char*,...) ;
 int VectorCopy (int ,int ) ;
 int c_faceLeafs ;

tree_t *FaceBSP( face_t *list ) {
 tree_t *tree;
 face_t *face;
 int i;
 int count;

 Sys_FPrintf( SYS_VRB, "--- FaceBSP ---\n" );

 tree = AllocTree();

 count = 0;
 for ( face = list; face != ((void*)0); face = face->next )
 {
  count++;
  for ( i = 0; i < face->w->numpoints; i++ )
  {
   AddPointToBounds( face->w->p[ i ], tree->mins, tree->maxs );
  }
 }
 Sys_FPrintf( SYS_VRB, "%9d faces\n", count );

 tree->headnode = AllocNode();
 VectorCopy( tree->mins, tree->headnode->mins );
 VectorCopy( tree->maxs, tree->headnode->maxs );
 c_faceLeafs = 0;

 BuildFaceTree_r( tree->headnode, list );

 Sys_FPrintf( SYS_VRB, "%9d leafs\n", c_faceLeafs );

 return tree;
}
