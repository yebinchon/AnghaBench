
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int x; int* extra; struct TYPE_3__* right; struct TYPE_3__* left; } ;
typedef TYPE_1__ rbtree_t ;


 int printf (char*,...) ;
 int putchar (char) ;

__attribute__((used)) static void dump (rbtree_t *T, int extra) {
  int i;
  if (!T) return;
  printf ("[ ");
  dump (T->left, extra);

  printf ("%d", T->x);

  for (i = 0; i < extra; i++) {
    printf (":%d", T->extra[i]);
  }

  putchar (' ');

  dump (T->right, extra);
  printf ("] ");
}
