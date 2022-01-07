
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iterator_stack_node {struct iterator_stack_node* prev; } ;


 struct iterator_stack_node* isn_free ;

__attribute__((used)) static inline void free_stack_node (struct iterator_stack_node *S) {
  S->prev = isn_free;
  isn_free = S;
}
