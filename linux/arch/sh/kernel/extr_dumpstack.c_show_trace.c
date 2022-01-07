
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;


 struct task_struct* current ;
 int debug_show_held_locks (struct task_struct*) ;
 int print_trace_ops ;
 int printk (char*) ;
 int unwind_stack (struct task_struct*,struct pt_regs*,unsigned long*,int *,char*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void show_trace(struct task_struct *tsk, unsigned long *sp,
  struct pt_regs *regs)
{
 if (regs && user_mode(regs))
  return;

 printk("\nCall trace:\n");

 unwind_stack(tsk, regs, sp, &print_trace_ops, "");

 printk("\n");

 if (!tsk)
  tsk = current;

 debug_show_held_locks(tsk);
}
