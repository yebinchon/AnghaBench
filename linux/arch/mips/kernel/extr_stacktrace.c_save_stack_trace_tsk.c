
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int reg31; scalar_t__ reg29; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_trace {int max_entries; scalar_t__ nr_entries; } ;
struct pt_regs {int cp0_epc; scalar_t__* regs; } ;


 int WARN_ON (int) ;
 struct task_struct* current ;
 int prepare_frametrace (struct pt_regs*) ;
 int save_context_stack (struct stack_trace*,struct task_struct*,struct pt_regs*,int) ;

void save_stack_trace_tsk(struct task_struct *tsk, struct stack_trace *trace)
{
 struct pt_regs dummyregs;
 struct pt_regs *regs = &dummyregs;

 WARN_ON(trace->nr_entries || !trace->max_entries);

 if (tsk != current) {
  regs->regs[29] = tsk->thread.reg29;
  regs->regs[31] = 0;
  regs->cp0_epc = tsk->thread.reg31;
 } else
  prepare_frametrace(regs);
 save_context_stack(trace, tsk, regs, tsk == current);
}
