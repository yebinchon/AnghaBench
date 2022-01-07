
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {int dummy; } ;
typedef int stack_ptr ;


 scalar_t__ stack_block (struct stack*,int ) ;

__attribute__((used)) static stack_ptr* stack_block_next(struct stack* s, stack_ptr p) {
  return &((stack_ptr*)stack_block(s, p))[-1];
}
