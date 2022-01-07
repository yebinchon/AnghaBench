
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int x; struct TYPE_5__* right; } ;
typedef TYPE_1__ tree_ext_t ;
struct iterator {int tree_x; TYPE_1__* node; } ;


 TYPE_1__* NIL ;
 int it_push_stack (struct iterator*,TYPE_1__*) ;

__attribute__((used)) static inline void it_go_right (struct iterator *cur, tree_ext_t *T) {
  while (T->right != NIL) {
    it_push_stack (cur, T);
    T = T->right;
  }
  cur->node = T;
  cur->tree_x = T->x;
}
