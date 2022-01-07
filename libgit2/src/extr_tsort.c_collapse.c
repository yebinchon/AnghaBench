
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsort_store {int dummy; } ;
struct tsort_run {int length; } ;
typedef int ssize_t ;


 int merge (void**,struct tsort_run*,int,struct tsort_store*) ;

__attribute__((used)) static ssize_t collapse(void **dst, struct tsort_run *stack, ssize_t stack_curr, struct tsort_store *store, ssize_t size)
{
 ssize_t A, B, C;

 while (1) {

  if (stack_curr <= 1)
   break;


  if ((stack_curr == 2) && (stack[0].length + stack[1].length == size)) {
   merge(dst, stack, stack_curr, store);
   stack[0].length += stack[1].length;
   stack_curr--;
   break;
  }


  else if ((stack_curr == 2) && (stack[0].length <= stack[1].length)) {
   merge(dst, stack, stack_curr, store);
   stack[0].length += stack[1].length;
   stack_curr--;
   break;
  }
  else if (stack_curr == 2)
   break;

  A = stack[stack_curr - 3].length;
  B = stack[stack_curr - 2].length;
  C = stack[stack_curr - 1].length;


  if (A <= B + C) {
   if (A < C) {
    merge(dst, stack, stack_curr - 1, store);
    stack[stack_curr - 3].length += stack[stack_curr - 2].length;
    stack[stack_curr - 2] = stack[stack_curr - 1];
    stack_curr--;
   } else {
    merge(dst, stack, stack_curr, store);
    stack[stack_curr - 2].length += stack[stack_curr - 1].length;
    stack_curr--;
   }
  } else if (B <= C) {
   merge(dst, stack, stack_curr, store);
   stack[stack_curr - 2].length += stack[stack_curr - 1].length;
   stack_curr--;
  } else
   break;
 }

 return stack_curr;
}
