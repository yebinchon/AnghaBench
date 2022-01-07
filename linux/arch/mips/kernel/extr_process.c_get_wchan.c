
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long reg29; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;
struct TYPE_4__ {unsigned long frame_size; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 scalar_t__ in_sched_functions (unsigned long) ;
 TYPE_2__ schedule_mfi ;
 int task_stack_page (struct task_struct*) ;
 unsigned long thread_saved_pc (struct task_struct*) ;
 unsigned long unwind_stack (struct task_struct*,unsigned long*,unsigned long,unsigned long*) ;

unsigned long get_wchan(struct task_struct *task)
{
 unsigned long pc = 0;





 if (!task || task == current || task->state == TASK_RUNNING)
  goto out;
 if (!task_stack_page(task))
  goto out;

 pc = thread_saved_pc(task);
out:
 return pc;
}
