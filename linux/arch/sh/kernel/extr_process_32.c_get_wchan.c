
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 scalar_t__ in_sched_functions (unsigned long) ;
 unsigned long thread_saved_pc (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long pc;

 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;




 pc = thread_saved_pc(p);
 return pc;
}
