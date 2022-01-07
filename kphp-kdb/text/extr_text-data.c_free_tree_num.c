
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ tree_num_t ;


 TYPE_1__* NIL ;
 int free_tree_num_node (TYPE_1__*) ;

__attribute__((used)) static void free_tree_num (tree_num_t *T) {
  if (T != NIL) {
    free_tree_num (T->left);
    free_tree_num (T->right);
    free_tree_num_node (T);
  }
}
