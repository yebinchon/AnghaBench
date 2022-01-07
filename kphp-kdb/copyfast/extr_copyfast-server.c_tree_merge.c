
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x; scalar_t__ y; int size; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ tree_t ;


 int assert (int) ;

__attribute__((used)) static tree_t *tree_merge (tree_t *L, tree_t *R) {
  if (!L) { return R; }
  if (!R) { return L; }
  assert (L->x < R->x);
  if (L->y > R->y) {
    L->right = tree_merge (L->right, R);
    L->size = 1 + (L->left ? L->left->size : 0) + (L->right ? L->right->size : 0);
    return L;
  } else {
    R->left = tree_merge (L, R->left);
    R->size = 1 + (R->left ? R->left->size : 0) + (R->right ? R->right->size : 0);
    return R;
  }
}
