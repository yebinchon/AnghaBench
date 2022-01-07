
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ x; struct TYPE_6__* left; } ;
typedef TYPE_1__ tree_ext_t ;
struct iterator {int array_x; int x; scalar_t__ tree_x; TYPE_1__* node; scalar_t__ top; } ;


 TYPE_1__* NIL ;
 int assert (TYPE_1__*) ;
 int it_go_right (struct iterator*,TYPE_1__*) ;
 TYPE_1__* it_pop_stack (struct iterator*) ;
 int it_relax_x (struct iterator*) ;

__attribute__((used)) static inline void it_advance_tree (struct iterator *cur) {
  assert (cur->node);
  tree_ext_t *T = cur->node->left;
  if (T != NIL) {
    it_go_right (cur, T);
    it_relax_x (cur);
  } else if (cur->top) {
    T = it_pop_stack (cur);
    cur->node = T;
    cur->tree_x = T->x;
    it_relax_x (cur);
  } else {
    cur->node = 0;
    cur->tree_x = 0;
    cur->x = cur->array_x;
  }
}
