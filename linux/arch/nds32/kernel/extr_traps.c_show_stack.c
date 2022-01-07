
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ fp; scalar_t__ sp; } ;
struct TYPE_4__ {TYPE_1__ cpu_context; } ;
struct task_struct {TYPE_2__ thread; } ;


 int CONFIG_FRAME_POINTER ;
 int IS_ENABLED (int ) ;
 int __dump (struct task_struct*,unsigned long*) ;
 int barrier () ;
 struct task_struct* current ;

void show_stack(struct task_struct *tsk, unsigned long *sp)
{
 unsigned long *base_reg;

 if (!tsk)
  tsk = current;
 if (!IS_ENABLED(CONFIG_FRAME_POINTER)) {
  if (tsk != current)
   base_reg = (unsigned long *)(tsk->thread.cpu_context.sp);
  else
   __asm__ __volatile__("\tori\t%0, $sp, #0\n":"=r"(base_reg));
 } else {
  if (tsk != current)
   base_reg = (unsigned long *)(tsk->thread.cpu_context.fp);
  else
   __asm__ __volatile__("\tori\t%0, $fp, #0\n":"=r"(base_reg));
 }
 __dump(tsk, base_reg);
 barrier();
}
