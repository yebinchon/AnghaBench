
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; struct TYPE_5__* uplink; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ utree_t ;



__attribute__((used)) static void utree_split (utree_t **L, utree_t **R, utree_t *T, int x) {
  if (!T) { *L = *R = 0; return; }
  if (x < T->x) {
    *R = T;
    utree_split (L, &T->left, T->left, x);
    if (T->left) {
      T->left->uplink = T;
    }
  } else {
    *L = T;
    utree_split (&T->right, R, T->right, x);
    if (T->right) {
      T->right->uplink = T;
    }
  }
}
