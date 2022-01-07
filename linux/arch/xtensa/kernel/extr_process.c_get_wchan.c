
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; unsigned long ra; } ;
struct task_struct {scalar_t__ state; TYPE_1__ thread; } ;


 unsigned long MAKE_PC_FROM_RA (unsigned long,unsigned long) ;
 unsigned long SPILL_SLOT (unsigned long,int) ;
 scalar_t__ TASK_RUNNING ;
 unsigned long THREAD_SIZE ;
 struct task_struct* current ;
 int in_sched_functions (unsigned long) ;
 scalar_t__ task_stack_page (struct task_struct*) ;

unsigned long get_wchan(struct task_struct *p)
{
 unsigned long sp, pc;
 unsigned long stack_page = (unsigned long) task_stack_page(p);
 int count = 0;

 if (!p || p == current || p->state == TASK_RUNNING)
  return 0;

 sp = p->thread.sp;
 pc = MAKE_PC_FROM_RA(p->thread.ra, p->thread.sp);

 do {
  if (sp < stack_page + sizeof(struct task_struct) ||
      sp >= (stack_page + THREAD_SIZE) ||
      pc == 0)
   return 0;
  if (!in_sched_functions(pc))
   return pc;



  pc = MAKE_PC_FROM_RA(SPILL_SLOT(sp, 0), sp);
  sp = SPILL_SLOT(sp, 1);
 } while (count++ < 16);
 return 0;
}
