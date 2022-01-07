
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; int * x; } ;
typedef TYPE_1__ md5_tree_t ;


 scalar_t__ memcmp (unsigned char*,int *,int) ;

__attribute__((used)) static void md5_tree_split (md5_tree_t **L, md5_tree_t **R, md5_tree_t *T, unsigned char x[16]) {
  if (!T) { *L = *R = 0; return; }
  if (memcmp (&x[0], &T->x[0], 16) < 0) {
    *R = T;
    md5_tree_split (L, &T->left, T->left, x);
  } else {
    *L = T;
    md5_tree_split (&T->right, R, T->right, x);
  }
}
