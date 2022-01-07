
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x1; int x2; struct TYPE_3__* right; struct TYPE_3__* middle; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree23_t ;



__attribute__((used)) static int *sort (tree23_t *T, int *st) {
  if (!T) return st;
  if (!(T->x1 & 1)) {
    st = sort (T->left, st);
    *st++ = T->x1;
    if (!(T->x2 & 1)) {
      st = sort (T->middle, st);
      *st++ = T->x2;
    }
    st = sort (T->right, st);
  } else {
    *st++ = T->x1 & -2;
    if (!(T->x2 & 1)) *st++ = T->x2;
  }
  return st;
}
