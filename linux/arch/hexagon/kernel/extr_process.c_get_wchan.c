
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ switch_sp; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;
struct hexagon_switch_stack {unsigned long fp; } ;


 scalar_t__ TASK_RUNNING ;
 int THREAD_SIZE ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long fp, pc;
 unsigned long stack_page;
 int count = 0;
 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;

 stack_page = (unsigned long)task_stack_page(p);
 fp = ((struct hexagon_switch_stack *)p->thread.switch_sp)->fp;
 do {
  if (fp < (stack_page + sizeof(struct thread_info)) ||
   fp >= (THREAD_SIZE - 8 + stack_page))
   return 0;
  pc = ((unsigned long *)fp)[1];
  if (!in_sched_functions(pc))
   return pc;
  fp = *(unsigned long *) fp;
 } while (count++ < 16);

 return 0;
}
