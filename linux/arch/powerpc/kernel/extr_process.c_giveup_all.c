
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* regs; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {unsigned long msr; } ;


 unsigned long MSR_FP ;
 unsigned long MSR_SPE ;
 unsigned long MSR_VEC ;
 unsigned long MSR_VSX ;
 int WARN_ON (int) ;
 int __giveup_altivec (struct task_struct*) ;
 int __giveup_fpu (struct task_struct*) ;
 int __giveup_spe (struct task_struct*) ;
 int check_if_tm_restore_required (struct task_struct*) ;
 unsigned long msr_all_available ;
 int msr_check_and_clear (unsigned long) ;
 int msr_check_and_set (unsigned long) ;

void giveup_all(struct task_struct *tsk)
{
 unsigned long usermsr;

 if (!tsk->thread.regs)
  return;

 check_if_tm_restore_required(tsk);

 usermsr = tsk->thread.regs->msr;

 if ((usermsr & msr_all_available) == 0)
  return;

 msr_check_and_set(msr_all_available);

 WARN_ON((usermsr & MSR_VSX) && !((usermsr & MSR_FP) && (usermsr & MSR_VEC)));
 msr_check_and_clear(msr_all_available);
}
