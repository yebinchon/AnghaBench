
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y; struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_1__ rev_friends_t ;



__attribute__((used)) static rev_friends_t *rev_friends_merge (rev_friends_t *L, rev_friends_t *R) {
  if (!L) { return R; }
  if (!R) { return L; }
  if (L->y > R->y) {
    L->right = rev_friends_merge (L->right, R);
    return L;
  } else {
    R->left = rev_friends_merge (L, R->left);
    return R;
  }
}
