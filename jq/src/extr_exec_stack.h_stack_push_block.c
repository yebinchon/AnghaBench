
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {scalar_t__ limit; scalar_t__ bound; } ;
typedef scalar_t__ stack_ptr ;


 int ALIGNMENT ;
 int align_round_up (size_t) ;
 scalar_t__* stack_block_next (struct stack*,scalar_t__) ;
 int stack_reallocate (struct stack*,int) ;

__attribute__((used)) static stack_ptr stack_push_block(struct stack* s, stack_ptr p, size_t sz) {
  int alloc_sz = align_round_up(sz) + ALIGNMENT;
  stack_ptr r = s->limit - alloc_sz;
  if (r < s->bound) {
    stack_reallocate(s, alloc_sz);
  }
  s->limit = r;
  *stack_block_next(s, r) = p;
  return r;
}
