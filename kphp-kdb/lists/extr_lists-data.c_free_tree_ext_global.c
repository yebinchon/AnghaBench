
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ tree_ext_global_t ;


 TYPE_1__* NILG ;
 int free_tree_ext_global_node (TYPE_1__*) ;

__attribute__((used)) static void free_tree_ext_global (tree_ext_global_t *T) {
  if (T != NILG) {
    free_tree_ext_global (T->left);
    free_tree_ext_global (T->right);
    free_tree_ext_global_node (T);
  }
}
