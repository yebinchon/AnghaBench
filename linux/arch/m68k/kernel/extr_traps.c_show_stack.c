
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ esp0; } ;
struct task_struct {TYPE_1__ thread; } ;


 unsigned long THREAD_SIZE ;
 int kstack_depth_to_print ;
 int pr_cont (char*,...) ;
 int pr_info (char*,unsigned long) ;
 int show_trace (unsigned long*) ;

void show_stack(struct task_struct *task, unsigned long *stack)
{
 unsigned long *p;
 unsigned long *endstack;
 int i;

 if (!stack) {
  if (task)
   stack = (unsigned long *)task->thread.esp0;
  else
   stack = (unsigned long *)&stack;
 }
 endstack = (unsigned long *)(((unsigned long)stack + THREAD_SIZE - 1) & -THREAD_SIZE);

 pr_info("Stack from %08lx:", (unsigned long)stack);
 p = stack;
 for (i = 0; i < kstack_depth_to_print; i++) {
  if (p + 1 > endstack)
   break;
  if (i % 8 == 0)
   pr_cont("\n       ");
  pr_cont(" %08lx", *p++);
 }
 pr_cont("\n");
 show_trace(stack);
}
