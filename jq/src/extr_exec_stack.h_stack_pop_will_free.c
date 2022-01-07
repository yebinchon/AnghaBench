
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack {scalar_t__ limit; } ;
typedef scalar_t__ stack_ptr ;



__attribute__((used)) static int stack_pop_will_free(struct stack* s, stack_ptr p) {
  return p == s->limit;
}
