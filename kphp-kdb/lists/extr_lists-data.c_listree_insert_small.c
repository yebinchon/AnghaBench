
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int y; int x; } ;
typedef TYPE_1__ tree_ext_small_t ;
typedef int object_id_t ;
struct TYPE_19__ {scalar_t__ N; TYPE_1__** root; } ;
typedef TYPE_2__ listree_t ;


 TYPE_1__* DeletedSubnode ;
 int MAKE_RPOS (int,int ) ;
 TYPE_1__* NIL ;
 scalar_t__ NODE_TYPE (TYPE_1__*) ;
 scalar_t__ TF_MINUS ;
 int TF_PLUS ;
 int assert (int) ;
 int find_rpos_indirect (TYPE_2__*,int ) ;
 int free_tree_ext_small_node (TYPE_1__*) ;
 int get_data_indirect (TYPE_2__*,scalar_t__) ;
 TYPE_1__* new_tree_subnode_small (int ,int,int ) ;
 int object_id_equal (int ,int ) ;
 TYPE_1__* tree_ext_delete (TYPE_1__*,int ) ;
 TYPE_1__* tree_ext_insert (TYPE_1__*,int ,int ,TYPE_1__*) ;
 TYPE_1__* tree_ext_lookup (TYPE_1__*,int ) ;

__attribute__((used)) static void listree_insert_small (listree_t *LI, object_id_t x, int y) {
  tree_ext_small_t **R = LI->root;
  int rpos;
  tree_ext_small_t *T = tree_ext_lookup (*R, x);
  if (T == NIL) {
    rpos = find_rpos_indirect (LI, x);
    assert (!rpos || !object_id_equal (get_data_indirect (LI, LI->N - rpos), x));
    tree_ext_small_t *node = new_tree_subnode_small (x, y, MAKE_RPOS (rpos, TF_PLUS));
    *R = tree_ext_insert (*R, node->x, node->y, node);
  } else {
    assert (NODE_TYPE(T) == TF_MINUS);
    DeletedSubnode = 0;
    *R = tree_ext_delete (*R, x);
    assert (DeletedSubnode == T);
    free_tree_ext_small_node (T);
  }
}
