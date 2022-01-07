
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fsindex; unsigned long fsbase; } ;
struct task_struct {TYPE_1__ thread; } ;


 struct task_struct* current ;
 unsigned long x86_fsbase_read_cpu () ;
 unsigned long x86_fsgsbase_read_task (struct task_struct*,scalar_t__) ;

unsigned long x86_fsbase_read_task(struct task_struct *task)
{
 unsigned long fsbase;

 if (task == current)
  fsbase = x86_fsbase_read_cpu();
 else if (task->thread.fsindex == 0)
  fsbase = task->thread.fsbase;
 else
  fsbase = x86_fsgsbase_read_task(task, task->thread.fsindex);

 return fsbase;
}
