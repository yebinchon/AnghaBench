
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_ext_t ;
struct iterator_stack_node {int * node; struct iterator_stack_node* prev; } ;
struct iterator {struct iterator_stack_node* top; } ;


 int free_stack_node (struct iterator_stack_node*) ;

__attribute__((used)) static inline tree_ext_t *it_pop_stack (struct iterator *cur) {
  struct iterator_stack_node *S = cur->top;
  cur->top = S->prev;
  free_stack_node (S);
  return S->node;
}
