
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int y; int x; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef TYPE_1__ tree_num_t ;


 TYPE_1__* new_tree_num_node (int,int,int) ;
 int tree_num_relax (TYPE_1__*) ;
 int tree_num_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,int) ;

__attribute__((used)) static tree_num_t *tree_num_insert (tree_num_t *T, int x, int y, int z) {
  tree_num_t *P;
  if (T->y > y) {
    if (x < T->x) {
      T->left = tree_num_insert (T->left, x, y, z);
    } else {
      T->right = tree_num_insert (T->right, x, y, z);
    }
    tree_num_relax (T);
    return T;
  }
  P = new_tree_num_node (x, y, z);
  tree_num_split (&P->left, &P->right, T, x);
  tree_num_relax (P);
  return P;
}
