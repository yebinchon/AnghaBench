
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int y; int x; } ;
typedef TYPE_1__ tree_ext_global_t ;
typedef int object_id_t ;
struct TYPE_19__ {scalar_t__ N; TYPE_1__** root; } ;
typedef TYPE_2__ listree_global_t ;
typedef scalar_t__ global_id_t ;


 TYPE_1__* DeletedSubnode_global ;
 int MAKE_RPOS (int,int ) ;
 TYPE_1__* NILG ;
 scalar_t__ NODE_TYPE (TYPE_1__*) ;
 int TF_MINUS ;
 scalar_t__ TF_PLUS ;
 int assert (int) ;
 int find_rpos_global (TYPE_2__*,scalar_t__) ;
 int free_tree_ext_global_node (TYPE_1__*) ;
 scalar_t__ get_data_global (TYPE_2__*,scalar_t__) ;
 int lrand48 () ;
 TYPE_1__* new_tree_subnode_global (scalar_t__,int ,int ,int ) ;
 TYPE_1__* tree_ext_global_delete (TYPE_1__*,scalar_t__) ;
 TYPE_1__* tree_ext_global_insert (TYPE_1__*,int ,int ,TYPE_1__*) ;
 TYPE_1__* tree_ext_global_lookup (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void listree_delete_global (listree_global_t *LG, global_id_t x, object_id_t z) {
  tree_ext_global_t **R = LG->root;
  int rpos;
  tree_ext_global_t *T = tree_ext_global_lookup (*R, x);

  if (T == NILG) {
    rpos = find_rpos_global (LG, x);
    assert (rpos > 0 && get_data_global (LG, LG->N - rpos) == x);
    tree_ext_global_t *node = new_tree_subnode_global (x, lrand48 (), MAKE_RPOS (rpos, TF_MINUS), z);
    *R = tree_ext_global_insert (*R, node->x, node->y, node);
  } else {
    assert (NODE_TYPE(T) == TF_PLUS);
    DeletedSubnode_global = 0;
    *R = tree_ext_global_delete (*R, x);
    assert (DeletedSubnode_global == T);
    free_tree_ext_global_node (T);
  }
}
