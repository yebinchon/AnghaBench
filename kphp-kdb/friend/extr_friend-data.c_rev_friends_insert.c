
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int date; int x1; int x2; int y; struct TYPE_8__* right; struct TYPE_8__* left; } ;
typedef TYPE_1__ rev_friends_t ;


 int assert (int) ;
 TYPE_1__* new_rev_friends_node (int,int,int) ;
 int rev_friends_split (TYPE_1__**,TYPE_1__**,TYPE_1__*,int,int) ;

__attribute__((used)) static rev_friends_t *rev_friends_insert (rev_friends_t *T, int x1, int x2, int y, int date) {
  rev_friends_t *P;
  if (!T) {
    P = new_rev_friends_node (x1, x2, y);
    P->date = date;
    return P;
  }
  assert (x1 != T->x1 || x2 != T->x2);
  if (T->y >= y) {
    if (x1 < T->x1 || (x1 == T->x1 && x2 < T->x2)) {
      T->left = rev_friends_insert (T->left, x1, x2, y, date);
    } else {
      T->right = rev_friends_insert (T->right, x1, x2, y, date);
    }
    return T;
  }
  P = new_rev_friends_node (x1, x2, y);
  P->date = date;
  rev_friends_split (&P->left, &P->right, T, x1, x2);
  return P;
}
