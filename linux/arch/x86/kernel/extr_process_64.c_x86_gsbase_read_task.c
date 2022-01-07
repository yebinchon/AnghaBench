
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ gsindex; unsigned long gsbase; } ;
struct task_struct {TYPE_1__ thread; } ;


 struct task_struct* current ;
 unsigned long x86_fsgsbase_read_task (struct task_struct*,scalar_t__) ;
 unsigned long x86_gsbase_read_cpu_inactive () ;

unsigned long x86_gsbase_read_task(struct task_struct *task)
{
 unsigned long gsbase;

 if (task == current)
  gsbase = x86_gsbase_read_cpu_inactive();
 else if (task->thread.gsindex == 0)
  gsbase = task->thread.gsbase;
 else
  gsbase = x86_fsgsbase_read_task(task, task->thread.gsindex);

 return gsbase;
}
