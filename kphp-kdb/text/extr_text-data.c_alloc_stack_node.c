
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterator_stack_node {struct iterator_stack_node* prev; } ;


 scalar_t__ isn_alloc ;
 struct iterator_stack_node* isn_free ;
 scalar_t__ isn_top ;

__attribute__((used)) static inline struct iterator_stack_node *alloc_stack_node (void) {
  if (isn_free) {
    struct iterator_stack_node *S = isn_free;
    isn_free = S->prev;
    return S;
  } else if (isn_alloc < isn_top) {
    return isn_alloc++;
  } else {
    return 0;
  }
}
