
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void tree_ext_large_t ;
typedef int object_id_t ;
struct TYPE_3__ {void** root; } ;
typedef TYPE_1__ listree_direct_t ;


 void* LARGE_NODE (int ) ;
 scalar_t__ NIL ;
 scalar_t__ NODE_TYPE (void*) ;
 scalar_t__ SMALL_NODE (void*) ;
 scalar_t__ TF_MINUS ;
 int tree_ext_lookup (scalar_t__,int ) ;

__attribute__((used)) static tree_ext_large_t *listree_lookup_large_tree (listree_direct_t *LD, object_id_t x, int *index) {
  tree_ext_large_t *T = LARGE_NODE (tree_ext_lookup (SMALL_NODE (*LD->root), x));
  if (SMALL_NODE (T) == NIL) {
    return (void *)-1;
  } else {
    if (NODE_TYPE (T) == TF_MINUS) {
      return 0;
    }
    return T;
  }
}
