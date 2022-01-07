
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long x; int z; } ;
typedef TYPE_1__ ltree_t ;



__attribute__((used)) static inline int legacy_tree_equal (ltree_t *T, long long x, int z) {
  return x == T->x && z == T->z;
}
