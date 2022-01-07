
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterator {scalar_t__ array_x; scalar_t__ tree_x; scalar_t__ x; } ;



__attribute__((used)) static inline void it_relax_x (struct iterator *cur) {
  if (cur->array_x > cur->tree_x) {
    cur->x = cur->array_x;
  } else {
    cur->x = cur->tree_x;
  }
}
