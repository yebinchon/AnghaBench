
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int x1; int x2; struct TYPE_9__* right; struct TYPE_9__* left; } ;
typedef TYPE_1__ rev_friends_t ;


 int assert (TYPE_1__*) ;
 int free_rev_friends_node (TYPE_1__*) ;
 TYPE_1__* rev_friends_merge (TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static rev_friends_t *rev_friends_delete (rev_friends_t *T, int x1, int x2) {
  assert (T);
  if (T->x1 == x1 && T->x2 == x2) {
    rev_friends_t *N = rev_friends_merge (T->left, T->right);
    free_rev_friends_node (T);
    return N;
  }
  if (x1 < T->x1 || (x1 == T->x1 && x2 < T->x2)) {
    T->left = rev_friends_delete (T->left, x1, x2);
  } else {
    T->right = rev_friends_delete (T->right, x1, x2);
  }
  return T;
}
