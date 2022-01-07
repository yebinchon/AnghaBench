
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;
struct pt_regs {int * gpr; } ;


 int current ;
 int save_context_stack (struct stack_trace*,int ,int ,int ) ;

void
save_stack_trace_regs(struct pt_regs *regs, struct stack_trace *trace)
{
 save_context_stack(trace, regs->gpr[1], current, 0);
}
