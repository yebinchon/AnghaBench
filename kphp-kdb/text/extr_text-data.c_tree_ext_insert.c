
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int y; int x; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef TYPE_1__ tree_ext_t ;


 TYPE_1__* new_tree_ext_node (int,int,int) ;
 int tree_ext_relax (TYPE_1__*) ;
 int tree_ext_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,int) ;

__attribute__((used)) static tree_ext_t *tree_ext_insert (tree_ext_t *T, int x, int y, int rpos) {
  tree_ext_t *P;
  if (T->y > y) {
    if (x < T->x) {
      T->left = tree_ext_insert (T->left, x, y, rpos);
    } else {
      T->right = tree_ext_insert (T->right, x, y, rpos);
    }
    tree_ext_relax (T);
    return T;
  }
  P = new_tree_ext_node (x, y, rpos);
  tree_ext_split (&P->left, &P->right, T, x);
  tree_ext_relax (P);
  return P;
}
