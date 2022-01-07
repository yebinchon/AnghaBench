
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {int dummy; } ;
struct task_struct {int dummy; } ;
struct pt_regs {unsigned long ip; } ;
typedef int (* stack_trace_consume_fn ) (void*,unsigned long,int) ;


 int unwind_done (struct unwind_state*) ;
 unsigned long unwind_get_return_address (struct unwind_state*) ;
 int unwind_next_frame (struct unwind_state*) ;
 int unwind_start (struct unwind_state*,struct task_struct*,struct pt_regs*,int *) ;

void arch_stack_walk(stack_trace_consume_fn consume_entry, void *cookie,
       struct task_struct *task, struct pt_regs *regs)
{
 struct unwind_state state;
 unsigned long addr;

 if (regs && !consume_entry(cookie, regs->ip, 0))
  return;

 for (unwind_start(&state, task, regs, ((void*)0)); !unwind_done(&state);
      unwind_next_frame(&state)) {
  addr = unwind_get_return_address(&state);
  if (!addr || !consume_entry(cookie, addr, 0))
   break;
 }
}
