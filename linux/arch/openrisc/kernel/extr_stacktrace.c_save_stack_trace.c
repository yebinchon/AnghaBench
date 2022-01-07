
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;


 int save_stack_address ;
 int unwind_stack (struct stack_trace*,unsigned long*,int ) ;

void save_stack_trace(struct stack_trace *trace)
{
 unwind_stack(trace, (unsigned long *) &trace, save_stack_address);
}
