
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {unsigned long ksp; } ;
struct task_struct {scalar_t__ state; } ;
struct reg_window {unsigned long* ins; } ;


 unsigned long STACK_BIAS ;
 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 int kstack_valid (struct thread_info*,unsigned long) ;
 struct thread_info* task_thread_info (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *task)
{
 unsigned long pc, fp, bias = 0;
 struct thread_info *tp;
 struct reg_window *rw;
        unsigned long ret = 0;
 int count = 0;

 if (!task || task == current ||
            task->state == TASK_RUNNING)
  goto out;

 tp = task_thread_info(task);
 bias = STACK_BIAS;
 fp = task_thread_info(task)->ksp + bias;

 do {
  if (!kstack_valid(tp, fp))
   break;
  rw = (struct reg_window *) fp;
  pc = rw->ins[7];
  if (!in_sched_functions(pc)) {
   ret = pc;
   goto out;
  }
  fp = rw->ins[6] + bias;
 } while (++count < 16);

out:
 return ret;
}
