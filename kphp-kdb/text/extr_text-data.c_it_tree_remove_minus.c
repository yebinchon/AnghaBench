
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iterator {scalar_t__ tree_x; scalar_t__ array_x; TYPE_1__* node; } ;
struct TYPE_2__ {int y; } ;


 int TF_MINUS ;
 int assert (int) ;
 int it_advance_array (struct iterator*) ;
 int it_advance_tree (struct iterator*) ;

__attribute__((used)) static inline void it_tree_remove_minus (struct iterator *cur) {
  while (cur->tree_x == cur->array_x && cur->tree_x > 0) {
    assert ((cur->node->y & 3) == TF_MINUS);
    it_advance_tree (cur);
    it_advance_array (cur);
  }
}
