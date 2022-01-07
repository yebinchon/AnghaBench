
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {int dummy; } ;


 int __save_stack_trace (struct task_struct*,struct stack_trace*) ;

void save_stack_trace_tsk(struct task_struct *tsk, struct stack_trace *trace)
{
 __save_stack_trace(tsk, trace);
}
