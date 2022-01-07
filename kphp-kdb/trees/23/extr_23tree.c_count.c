
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x1; int x2; struct TYPE_3__* right; struct TYPE_3__* middle; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree23_t ;



__attribute__((used)) static void count (tree23_t *T, int *lc, int *nc, int *cc) {
  if (!T) {
    *lc = 0; *nc = 0; *cc = 0;
    return;
  }
  if (T->x1 & 1) {
    ++*lc;
    ++*cc;
    if (!(T->x2 & 1)) ++*cc;
  } else {
    ++*nc;
    count (T->left, lc, nc, cc);
    if (!(T->x2 & 1)) {
      ++*cc;
      count (T->middle, lc, nc, cc);
    }
    ++*cc;
    count (T->right, lc, nc, cc);
  }
}
