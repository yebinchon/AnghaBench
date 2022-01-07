
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x1; int x2; struct TYPE_3__* right; struct TYPE_3__* middle; struct TYPE_3__* left; } ;
typedef TYPE_1__ tree23_t ;


 int printf (char*,...) ;

__attribute__((used)) static void dump (tree23_t *T) {
  if (!T) return;
  printf ("[ ");
  if (!(T->x1 & 1)) {
    dump (T->left);
    printf ("%d ", T->x1);
    if (!(T->x2 & 1)) {
      dump (T->middle);
      printf ("%d ", T->x2);
    }
    dump (T->right);
  } else {
    printf ("%d ", T->x1);
    if (!(T->x2 & 1)) printf ("%d ", T->x2);
  }
  printf ("] ");
}
