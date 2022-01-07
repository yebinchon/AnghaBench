
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x2; int x1; struct TYPE_3__* right; struct TYPE_3__* middle; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree23_t ;



__attribute__((used)) static int *sort_rec (tree23_t *T, int *st, int depth) {
  if (--depth >= 0) {
    st = sort_rec (T->left, st, depth);
    *st++ = T->x1;
    if (T->x2 > T->x1) {
      st = sort_rec (T->middle, st, depth);
      *st++ = T->x2;
    }
    st = sort_rec (T->right, st, depth);
  } else {
    *st++ = T->x1;
    if (T->x2 > T->x1) {
      *st++ = T->x2;
    }
  }
  return st;
}
