
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int rpos; int x; int right; int left; } ;
typedef TYPE_1__ tree_ext_small_t ;
typedef int object_id_t ;


 int NIL ;
 int alloc_small_nodes ;
 int assert (TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;
 int object_id_bytes ;
 int tree_ext_small_node_size ;
 TYPE_1__* zmalloc (int ) ;

__attribute__((used)) static inline tree_ext_small_t *new_tree_subnode_small (object_id_t x, int y, int rpos) {
  tree_ext_small_t *P;
  P = zmalloc (tree_ext_small_node_size);
  assert (P);
  alloc_small_nodes++;
  P->left = P->right = NIL;
  P->y = y;
  P->rpos = rpos;




  P->x = x;

  return P;
}
