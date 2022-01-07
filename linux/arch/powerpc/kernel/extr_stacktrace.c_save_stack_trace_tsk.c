
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long ksp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct stack_trace {int dummy; } ;


 struct task_struct* current ;
 unsigned long current_stack_pointer () ;
 int put_task_stack (struct task_struct*) ;
 int save_context_stack (struct stack_trace*,unsigned long,struct task_struct*,int ) ;
 int try_get_task_stack (struct task_struct*) ;

void save_stack_trace_tsk(struct task_struct *tsk, struct stack_trace *trace)
{
 unsigned long sp;

 if (!try_get_task_stack(tsk))
  return;

 if (tsk == current)
  sp = current_stack_pointer();
 else
  sp = tsk->thread.ksp;

 save_context_stack(trace, sp, tsk, 0);

 put_task_stack(tsk);
}
