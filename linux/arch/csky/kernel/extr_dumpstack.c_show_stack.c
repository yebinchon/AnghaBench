
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int show_trace (unsigned long*) ;
 scalar_t__ thread_saved_fp (struct task_struct*) ;

void show_stack(struct task_struct *task, unsigned long *stack)
{
 if (!stack) {
  if (task)
   stack = (unsigned long *)thread_saved_fp(task);
  else



   stack = (unsigned long *)&stack;

 }

 show_trace(stack);
}
