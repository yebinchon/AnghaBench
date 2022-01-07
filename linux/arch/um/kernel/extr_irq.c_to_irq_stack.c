
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {size_t cpu; struct thread_info* real_thread; } ;
struct task_struct {struct thread_info* stack; } ;
struct TYPE_2__ {struct task_struct* task; } ;


 TYPE_1__* cpu_tasks ;
 struct thread_info* current_thread_info () ;
 int pending_mask ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 unsigned long xchg (int *,unsigned long) ;

unsigned long to_irq_stack(unsigned long *mask_out)
{
 struct thread_info *ti;
 unsigned long mask, old;
 int nested;

 mask = xchg(&pending_mask, *mask_out);
 if (mask != 0) {
  old = *mask_out;
  do {
   old |= mask;
   mask = xchg(&pending_mask, old);
  } while (mask != old);
  return 1;
 }

 ti = current_thread_info();
 nested = (ti->real_thread != ((void*)0));
 if (!nested) {
  struct task_struct *task;
  struct thread_info *tti;

  task = cpu_tasks[ti->cpu].task;
  tti = task_thread_info(task);

  *ti = *tti;
  ti->real_thread = tti;
  task->stack = ti;
 }

 mask = xchg(&pending_mask, 0);
 *mask_out |= mask | nested;
 return 0;
}
