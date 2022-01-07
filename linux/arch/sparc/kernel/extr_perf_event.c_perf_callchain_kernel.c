
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sparc_stackf {unsigned long callers_pc; scalar_t__ fp; } ;
struct pt_regs {unsigned long tpc; unsigned long* u_regs; } ;
struct perf_callchain_entry_ctx {scalar_t__ nr; scalar_t__ max_stack; } ;
struct ftrace_ret_stack {unsigned long ret; } ;


 unsigned long STACK_BIAS ;
 size_t UREG_I6 ;
 int current ;
 int current_thread_info () ;
 struct ftrace_ret_stack* ftrace_graph_get_ret_stack (int ,int) ;
 scalar_t__ kstack_is_trap_frame (int ,struct pt_regs*) ;
 int kstack_valid (int ,unsigned long) ;
 int perf_callchain_store (struct perf_callchain_entry_ctx*,unsigned long) ;
 int return_to_handler ;
 int stack_trace_flush () ;
 scalar_t__ user_mode (struct pt_regs*) ;

void perf_callchain_kernel(struct perf_callchain_entry_ctx *entry,
      struct pt_regs *regs)
{
 unsigned long ksp, fp;




 stack_trace_flush();

 perf_callchain_store(entry, regs->tpc);

 ksp = regs->u_regs[UREG_I6];
 fp = ksp + STACK_BIAS;
 do {
  struct sparc_stackf *sf;
  struct pt_regs *regs;
  unsigned long pc;

  if (!kstack_valid(current_thread_info(), fp))
   break;

  sf = (struct sparc_stackf *) fp;
  regs = (struct pt_regs *) (sf + 1);

  if (kstack_is_trap_frame(current_thread_info(), regs)) {
   if (user_mode(regs))
    break;
   pc = regs->tpc;
   fp = regs->u_regs[UREG_I6] + STACK_BIAS;
  } else {
   pc = sf->callers_pc;
   fp = (unsigned long)sf->fp + STACK_BIAS;
  }
  perf_callchain_store(entry, pc);
 } while (entry->nr < entry->max_stack);
}
