
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;
struct pt_regs {scalar_t__ sp; } ;


 int save_stack_address_nosched ;
 int unwind_stack (struct stack_trace*,unsigned long*,int ) ;

void
save_stack_trace_regs(struct pt_regs *regs, struct stack_trace *trace)
{
 unwind_stack(trace, (unsigned long *) regs->sp,
       save_stack_address_nosched);
}
