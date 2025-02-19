
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ y; struct TYPE_7__* left; struct TYPE_7__* right; } ;
typedef TYPE_1__ tree_num_t ;


 TYPE_1__* NIL ;
 int tree_num_relax (TYPE_1__*) ;

__attribute__((used)) static tree_num_t *tree_num_merge (tree_num_t *L, tree_num_t *R) {
  if (L == NIL) { return R; }
  if (R == NIL) { return L; }
  if (L->y > R->y) {
    L->right = tree_num_merge (L->right, R);
    tree_num_relax (L);
    return L;
  } else {
    R->left = tree_num_merge (L, R->left);
    tree_num_relax (R);
    return R;
  }
}
