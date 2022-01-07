
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ x; struct TYPE_5__* right; struct TYPE_5__* left; } ;
typedef TYPE_1__ privacy_t ;
typedef scalar_t__ privacy_key_t ;



__attribute__((used)) static void privacy_split (privacy_t **L, privacy_t **R, privacy_t *T, privacy_key_t x) {
  if (!T) { *L = *R = 0; return; }
  if (x < T->x) {
    *R = T;
    privacy_split (L, &T->left, T->left, x);
  } else {
    *L = T;
    privacy_split (&T->right, R, T->right, x);
  }
}
