
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long long x; struct TYPE_4__* right; struct TYPE_4__* left; } ;
typedef TYPE_1__ ltree_t ;



__attribute__((used)) static ltree_t *ltree_lookup_legacy (ltree_t *T, long long x) {
  while (T && x != T->x) {
    T = (x < T->x) ? T->left : T->right;
  }
  return T;
}
