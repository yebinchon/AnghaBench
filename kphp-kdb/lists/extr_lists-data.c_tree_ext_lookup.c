
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* right; struct TYPE_5__* left; int x; } ;
typedef TYPE_1__ tree_ext_small_t ;
typedef int object_id_t ;


 TYPE_1__* NIL ;
 int object_id_compare (int ,int ) ;

__attribute__((used)) static inline tree_ext_small_t *tree_ext_lookup (tree_ext_small_t *T, object_id_t x) {
  int p = 0;
  while (T != NIL && (p = object_id_compare (x, T->x)) != 0) {
    T = (p < 0) ? T->left : T->right;
  }
  return T;
}
