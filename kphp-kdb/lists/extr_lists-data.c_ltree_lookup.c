
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ltree_x_t ;
struct TYPE_4__ {struct TYPE_4__* left; struct TYPE_4__* right; int x; } ;
typedef TYPE_1__ ltree_t ;


 int ltree_x_compare (int ,int ) ;

__attribute__((used)) static ltree_t *ltree_lookup (ltree_t *T, ltree_x_t x) {
  while (T) {
    int c = ltree_x_compare (x, T->x);
    if (!c) {
      return T;
    }
    T = (c > 0 ? T->right : T->left);
  }
  return T;
}
