
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* right; struct TYPE_3__* left; int x; } ;
typedef TYPE_1__ tree_t ;
typedef int rev_friends_t ;


 int * rev_friends_delete (int *,int ,int) ;

__attribute__((used)) static rev_friends_t *rev_friends_delete_tree (rev_friends_t *T, int x2, tree_t *A) {
  if (!A) {
    return T;
  }
  T = rev_friends_delete (T, A->x, x2);
  T = rev_friends_delete_tree (T, x2, A->left);
  T = rev_friends_delete_tree (T, x2, A->right);
  return T;
}
