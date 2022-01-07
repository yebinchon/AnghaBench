
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {scalar_t__ limit; } ;
typedef scalar_t__ stack_ptr ;


 int ALIGNMENT ;
 int align_round_up (size_t) ;
 scalar_t__* stack_block_next (struct stack*,scalar_t__) ;

__attribute__((used)) static stack_ptr stack_pop_block(struct stack* s, stack_ptr p, size_t sz) {
  stack_ptr r = *stack_block_next(s, p);
  if (p == s->limit) {
    int alloc_sz = align_round_up(sz) + ALIGNMENT;
    s->limit += alloc_sz;
  }
  return r;
}
