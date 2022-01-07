
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x1; int x2; struct TYPE_3__* middle; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree23_t ;



__attribute__((used)) static int check (tree23_t *T, int ll, int rr) {
  if (!T) return 0;
  if (T->x1 < ll || T->x1 > rr || T->x2 < ll || T->x2 > rr) return -239017;
  if (T->x1 & 1) {
    if (T->x2 & 1) {
      if (T->x2 != T->x1) return -239017;
    } else {
      if (T->x2 < T->x1) return -239017;
    }
    return 1;
  }
  int ld = check (T->left, ll, T->x1 - 1);
  int rd = check (T->right, (T->x2 | 1) + 1, rr);
  if (ld != rd) ld = -239017;
  if (!(T->x2 & 1)) {
    rd = check (T->middle, T->x1 + 2, T->x2 - 1);
    if (ld != rd) ld = -239017;
    if (T->x2 < T->x1) return -239017;
  } else {
    if (T->x2 != T->x1 + 1) return -239017;
  }
  return ++ld;
}
