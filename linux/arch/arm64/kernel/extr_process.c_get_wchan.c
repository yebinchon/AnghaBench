
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {scalar_t__ state; } ;
struct stackframe {unsigned long pc; } ;


 scalar_t__ TASK_RUNNING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 int put_task_stack (struct task_struct*) ;
 int start_backtrace (struct stackframe*,int ,int ) ;
 int thread_saved_fp (struct task_struct*) ;
 int thread_saved_pc (struct task_struct*) ;
 scalar_t__ try_get_task_stack (struct task_struct*) ;
 scalar_t__ unwind_frame (struct task_struct*,struct stackframe*) ;

unsigned long get_wchan(struct task_struct *p)
{
 struct stackframe frame;
 unsigned long stack_page, ret = 0;
 int count = 0;
 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;

 stack_page = (unsigned long)try_get_task_stack(p);
 if (!stack_page)
  return 0;

 start_backtrace(&frame, thread_saved_fp(p), thread_saved_pc(p));

 do {
  if (unwind_frame(p, &frame))
   goto out;
  if (!in_sched_functions(frame.pc)) {
   ret = frame.pc;
   goto out;
  }
 } while (count ++ < 16);

out:
 put_task_stack(p);
 return ret;
}
