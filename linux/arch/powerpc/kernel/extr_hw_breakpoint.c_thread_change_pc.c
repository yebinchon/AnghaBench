
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * last_hit_ubp; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int msr; } ;
struct arch_hw_breakpoint {int dummy; } ;


 int MSR_SE ;
 int __set_breakpoint (struct arch_hw_breakpoint*) ;
 struct arch_hw_breakpoint* counter_arch_bp (int *) ;
 scalar_t__ likely (int) ;

void thread_change_pc(struct task_struct *tsk, struct pt_regs *regs)
{
 struct arch_hw_breakpoint *info;

 if (likely(!tsk->thread.last_hit_ubp))
  return;

 info = counter_arch_bp(tsk->thread.last_hit_ubp);
 regs->msr &= ~MSR_SE;
 __set_breakpoint(info);
 tsk->thread.last_hit_ubp = ((void*)0);
}
