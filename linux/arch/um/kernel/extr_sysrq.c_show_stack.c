
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_4__ {struct pt_regs* segv_regs; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int STACKSLOTS_PER_LINE ;
 TYPE_2__* current ;
 int dump_trace (TYPE_2__*,int *,int *) ;
 unsigned long* get_stack_pointer (struct task_struct*,struct pt_regs*) ;
 scalar_t__ kstack_end (unsigned long*) ;
 scalar_t__ os_is_signal_stack () ;
 int pr_cont (char*,...) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int stackops ;

void show_stack(struct task_struct *task, unsigned long *stack)
{
 unsigned long *sp = stack;
 struct pt_regs *segv_regs = current->thread.segv_regs;
 int i;

 if (!segv_regs && os_is_signal_stack()) {
  pr_err("Received SIGSEGV in SIGSEGV handler,"
    " aborting stack trace!\n");
  return;
 }

 if (!stack)
  sp = get_stack_pointer(task, segv_regs);

 pr_info("Stack:\n");
 stack = sp;
 for (i = 0; i < 3 * STACKSLOTS_PER_LINE; i++) {
  if (kstack_end(stack))
   break;
  if (i && ((i % STACKSLOTS_PER_LINE) == 0))
   pr_cont("\n");
  pr_cont(" %08lx", *stack++);
 }
 pr_cont("\n");

 pr_info("Call Trace:\n");
 dump_trace(current, &stackops, ((void*)0));
 pr_info("\n");
}
