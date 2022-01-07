
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* right; int * x; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree_t ;
typedef int hash_entry_t ;


 int assert (int) ;

__attribute__((used)) static int tree_dump_pointers (tree_t *T, hash_entry_t **x, int p, int maxp) {
  if (!T) {
    return p;
  }
  p = tree_dump_pointers (T->left, x, p, maxp);
  assert (p < maxp);
  x[p ++] = T->x;
  return tree_dump_pointers (T->right, x, p, maxp);
}
