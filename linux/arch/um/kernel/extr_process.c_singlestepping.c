
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ singlestep_syscall; } ;
struct task_struct {int ptrace; TYPE_1__ thread; } ;


 int PT_DTRACE ;
 void* current ;

int singlestepping(void * t)
{
 struct task_struct *task = t ? t : current;

 if (!(task->ptrace & PT_DTRACE))
  return 0;

 if (task->thread.singlestep_syscall)
  return 1;

 return 2;
}
