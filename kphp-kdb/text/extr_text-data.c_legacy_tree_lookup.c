
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* right; struct TYPE_6__* left; } ;
typedef TYPE_1__ ltree_t ;


 int legacy_tree_equal (TYPE_1__*,long long,int) ;
 scalar_t__ legacy_tree_less (long long,int,TYPE_1__*) ;

__attribute__((used)) static ltree_t *legacy_tree_lookup (ltree_t *T, long long x, int z) {
  while (T && !legacy_tree_equal (T, x, z)) {
    T = legacy_tree_less (x, z, T) ? T->left : T->right;
  }
  return T;
}
