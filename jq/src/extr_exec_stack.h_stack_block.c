
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {scalar_t__ mem_end; } ;
typedef scalar_t__ stack_ptr ;



__attribute__((used)) static void* stack_block(struct stack* s, stack_ptr p) {
  return (void*)(s->mem_end + p);
}
