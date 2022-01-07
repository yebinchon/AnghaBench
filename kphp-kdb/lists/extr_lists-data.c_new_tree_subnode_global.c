
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int y; int rpos; int z; int x; int right; int left; } ;
typedef TYPE_1__ tree_ext_global_t ;
typedef int object_id_t ;
typedef int global_id_t ;


 int NILG ;
 int alloc_global_nodes ;
 int assert (TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;
 int object_id_bytes ;
 int tree_ext_global_node_size ;
 TYPE_1__* zmalloc (int ) ;

__attribute__((used)) static inline tree_ext_global_t *new_tree_subnode_global (global_id_t x, int y, int rpos, object_id_t z) {
  tree_ext_global_t *P;
  P = zmalloc (tree_ext_global_node_size);
  assert (P);
  alloc_global_nodes++;
  P->left = P->right = NILG;
  P->y = y;
  P->rpos = rpos;
  P->x = x;




  P->z = z;


  return P;
}
