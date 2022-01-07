
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int y; int rpos; int x; int right; int left; } ;
typedef TYPE_1__ tree_ext_large_t ;
struct tree_payload {int dummy; } ;
typedef int object_id_t ;


 int NILL ;
 int PAYLOAD (TYPE_1__*) ;
 int alloc_large_nodes ;
 int assert (TYPE_1__*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int ,int ,int) ;
 int object_id_bytes ;
 int tree_ext_large_node_size ;
 TYPE_1__* zmalloc (int ) ;

__attribute__((used)) static inline tree_ext_large_t *new_tree_subnode_large (object_id_t x, int y, int rpos) {
  tree_ext_large_t * P;
  P = zmalloc (tree_ext_large_node_size);
  assert (P);
  alloc_large_nodes++;
  P->left = P->right = NILL;
  P->y = y;
  P->rpos = rpos;




  P->x = x;

  memset (PAYLOAD (P), 0, sizeof (struct tree_payload));
  return P;
}
