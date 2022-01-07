
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {int dummy; } ;


 int current ;
 scalar_t__ current_stack_pointer ;
 int save_stack_ops ;
 int unwind_stack (int ,int *,unsigned long*,int *,struct stack_trace*) ;

void save_stack_trace(struct stack_trace *trace)
{
 unsigned long *sp = (unsigned long *)current_stack_pointer;

 unwind_stack(current, ((void*)0), sp, &save_stack_ops, trace);
}
