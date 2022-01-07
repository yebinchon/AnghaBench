
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fph; int flags; } ;
struct task_struct {TYPE_1__ thread; } ;
struct ia64_psr {scalar_t__ mfh; } ;


 int IA64_THREAD_FPH_VALID ;
 scalar_t__ ia64_is_local_fpu_owner (struct task_struct*) ;
 struct ia64_psr* ia64_psr (int ) ;
 int ia64_save_fpu (int *) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int task_pt_regs (struct task_struct*) ;

inline void
ia64_flush_fph (struct task_struct *task)
{
 struct ia64_psr *psr = ia64_psr(task_pt_regs(task));





 preempt_disable();
 if (ia64_is_local_fpu_owner(task) && psr->mfh) {
  psr->mfh = 0;
  task->thread.flags |= IA64_THREAD_FPH_VALID;
  ia64_save_fpu(&task->thread.fph[0]);
 }
 preempt_enable();
}
