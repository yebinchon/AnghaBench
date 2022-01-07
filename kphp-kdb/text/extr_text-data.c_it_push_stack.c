
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree_ext_t ;
struct iterator_stack_node {int * node; struct iterator_stack_node* prev; } ;
struct iterator {struct iterator_stack_node* top; } ;


 struct iterator_stack_node* alloc_stack_node () ;

__attribute__((used)) static inline void it_push_stack (struct iterator *cur, tree_ext_t *T) {
  struct iterator_stack_node *S = alloc_stack_node ();
  if (S) {
    S->prev = cur->top;
    S->node = T;
    cur->top = S;
  }
}
