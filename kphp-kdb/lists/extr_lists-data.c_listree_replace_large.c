
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tree_ext_small_t ;
struct TYPE_10__ {int y; int x; } ;
typedef TYPE_1__ tree_ext_large_t ;
typedef int object_id_t ;
struct TYPE_11__ {scalar_t__ N; TYPE_1__** root; } ;
typedef TYPE_2__ listree_direct_t ;


 TYPE_1__* LARGE_NODE (int *) ;
 int MAKE_RPOS (int,int ) ;
 int * NIL ;
 scalar_t__ NODE_TYPE (int *) ;
 int SMALL_NODE (TYPE_1__*) ;
 scalar_t__ TF_MINUS ;
 int TF_ZERO ;
 int assert (int) ;
 int find_rpos_direct (TYPE_2__*,int ) ;
 int get_data_direct (TYPE_2__*,scalar_t__) ;
 int lrand48 () ;
 TYPE_1__* new_tree_subnode_large (int ,int ,int ) ;
 scalar_t__ object_id_equal (int ,int ) ;
 int * tree_ext_insert (int ,int ,int ,int ) ;
 int * tree_ext_lookup (int ,int ) ;

__attribute__((used)) static tree_ext_large_t *listree_replace_large (listree_direct_t *LD, object_id_t x) {
  tree_ext_large_t **R = LD->root;
  int rpos;
  tree_ext_small_t *T = tree_ext_lookup (SMALL_NODE (*R), x);
  if (T == NIL) {
    rpos = find_rpos_direct (LD, x);
    assert (rpos > 0 && object_id_equal (get_data_direct (LD, LD->N - rpos), x));
    tree_ext_large_t *node = new_tree_subnode_large (x, lrand48 (), MAKE_RPOS (rpos, TF_ZERO));
    *R = LARGE_NODE (tree_ext_insert (SMALL_NODE (*R), node->x, node->y, SMALL_NODE (node)));
    return node;
  } else {
    assert (NODE_TYPE (T) != TF_MINUS);
    return LARGE_NODE (T);
  }
}
