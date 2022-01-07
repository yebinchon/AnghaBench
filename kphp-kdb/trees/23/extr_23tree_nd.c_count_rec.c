
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ x2; scalar_t__ x1; struct TYPE_3__* right; struct TYPE_3__* middle; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree23_t ;



__attribute__((used)) static void count_rec (tree23_t *T, int depth, int *A) {
  if (--depth < 0) {
    A[1]++;
    A[0]++;
    if (T->x2 > T->x1) {
      A[0]++;
    }
  } else {
    A[2]++;
    count_rec (T->left, depth, A);
    if (T->x1 < T->x2) {
      A[0]++;
      count_rec (T->middle, depth, A);
    }
    A[0]++;
    count_rec (T->right, depth, A);
  }
}
