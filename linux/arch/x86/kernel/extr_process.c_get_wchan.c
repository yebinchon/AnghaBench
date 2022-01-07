
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;
struct inactive_task_frame {unsigned long bp; } ;


 unsigned long READ_ONCE (int ) ;
 unsigned long READ_ONCE_NOCHECK (unsigned long) ;
 scalar_t__ TASK_RUNNING ;
 unsigned long THREAD_SIZE ;
 unsigned long TOP_OF_KERNEL_STACK_PADDING ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 int put_task_stack (struct task_struct*) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 int try_get_task_stack (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long start, bottom, top, sp, fp, ip, ret = 0;
 int count = 0;

 if (p == current || p->state == TASK_RUNNING)
  return 0;

 if (!try_get_task_stack(p))
  return 0;

 start = (unsigned long)task_stack_page(p);
 if (!start)
  goto out;
 top = start + THREAD_SIZE - TOP_OF_KERNEL_STACK_PADDING;
 top -= 2 * sizeof(unsigned long);
 bottom = start;

 sp = READ_ONCE(p->thread.sp);
 if (sp < bottom || sp > top)
  goto out;

 fp = READ_ONCE_NOCHECK(((struct inactive_task_frame *)sp)->bp);
 do {
  if (fp < bottom || fp > top)
   goto out;
  ip = READ_ONCE_NOCHECK(*(unsigned long *)(fp + sizeof(unsigned long)));
  if (!in_sched_functions(ip)) {
   ret = ip;
   goto out;
  }
  fp = READ_ONCE_NOCHECK(*(unsigned long *)fp);
 } while (count++ < 16 && p->state != TASK_RUNNING);

out:
 put_task_stack(p);
 return ret;
}
