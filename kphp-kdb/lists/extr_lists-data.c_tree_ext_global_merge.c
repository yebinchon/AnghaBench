
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ y; struct TYPE_7__* left; struct TYPE_7__* right; } ;
typedef TYPE_1__ tree_ext_global_t ;


 TYPE_1__* NILG ;
 int tree_ext_global_relax (TYPE_1__*) ;

__attribute__((used)) static tree_ext_global_t *tree_ext_global_merge (tree_ext_global_t *L, tree_ext_global_t *R) {
  if (L == NILG) { return R; }
  if (R == NILG) { return L; }
  if (L->y > R->y) {
    L->right = tree_ext_global_merge (L->right, R);
    tree_ext_global_relax (L);
    return L;
  } else {
    R->left = tree_ext_global_merge (L, R->left);
    tree_ext_global_relax (R);
    return R;
  }
}
