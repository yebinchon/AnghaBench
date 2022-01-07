
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct stack_trace {int dummy; } ;


 scalar_t__ KSTK_ESP (struct task_struct*) ;
 struct task_struct* current ;
 int save_stack_address_nosched ;
 int unwind_stack (struct stack_trace*,unsigned long*,int ) ;

void save_stack_trace_tsk(struct task_struct *tsk, struct stack_trace *trace)
{
 unsigned long *sp = ((void*)0);

 if (tsk == current)
  sp = (unsigned long *) &sp;
 else
  sp = (unsigned long *) KSTK_ESP(tsk);

 unwind_stack(trace, sp, save_stack_address_nosched);
}
