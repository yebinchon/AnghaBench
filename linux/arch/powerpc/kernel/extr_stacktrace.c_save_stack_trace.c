
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;


 int current ;
 unsigned long current_stack_pointer () ;
 int save_context_stack (struct stack_trace*,unsigned long,int ,int) ;

void save_stack_trace(struct stack_trace *trace)
{
 unsigned long sp;

 sp = current_stack_pointer();

 save_context_stack(trace, sp, current, 1);
}
