
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_1__ tree_t ;



__attribute__((used)) static tree_t *tree_merge_sk (tree_t *L, tree_t *R) {
  tree_t *res, **t = &res;
  if (!L) {
    return R;
  }
  if (!R) {
    return L;
  }

  while (1) {
    if (L->y > R->y) {
      *t = L;
      t = &L->right;
      L = *t;
      if (!L) {
        *t = R;
        return res;
      }
    } else {
      *t = R;
      t = &R->left;
      R = *t;
      if (!R) {
        *t = L;
        return res;
      }
    }
  }
}
