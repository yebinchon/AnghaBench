
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterator {size_t array_cnt; int tree_x; int x; scalar_t__ array_x; scalar_t__* array_ptr; } ;


 int it_relax_x (struct iterator*) ;

__attribute__((used)) static inline void it_advance_array (struct iterator *cur) {
  if (cur->array_cnt) {
    cur->array_x = cur->array_ptr[--cur->array_cnt];
    it_relax_x (cur);
  } else {
    cur->array_x = 0;
    cur->x = cur->tree_x;
  }
}
