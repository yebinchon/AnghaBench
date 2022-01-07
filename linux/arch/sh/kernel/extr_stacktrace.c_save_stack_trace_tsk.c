
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_trace {int dummy; } ;


 int current ;
 int save_stack_ops_nosched ;
 int unwind_stack (int ,int *,unsigned long*,int *,struct stack_trace*) ;

void save_stack_trace_tsk(struct task_struct *tsk, struct stack_trace *trace)
{
 unsigned long *sp = (unsigned long *)tsk->thread.sp;

 unwind_stack(current, ((void*)0), sp, &save_stack_ops_nosched, trace);
}
