
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; int x; } ;
typedef TYPE_1__ tree_t ;
typedef int hash_entry_t ;


 scalar_t__ node_cmp (int *,int ) ;

__attribute__((used)) static void tree_split (tree_t **L, tree_t **R, tree_t *T, hash_entry_t *x) {
  if (!T) { *L = *R = 0; return; }
  if (node_cmp (x, T->x) < 0) {
    *R = T;
    tree_split (L, &T->left, T->left, x);
  } else {
    *L = T;
    tree_split (&T->right, R, T->right, x);
  }
}
