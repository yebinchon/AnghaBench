
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int fpexc_mode; int spefscr_last; struct pt_regs* regs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int msr; } ;


 int CPU_FTR_SPE ;
 int EINVAL ;
 int MSR_FE0 ;
 int MSR_FE1 ;
 int MSR_FP ;
 unsigned int PR_FP_ALL_EXCEPT ;
 unsigned int PR_FP_EXC_PRECISE ;
 unsigned int PR_FP_EXC_SW_ENABLE ;
 int SPRN_SPEFSCR ;
 unsigned int __pack_fe01 (unsigned int) ;
 scalar_t__ cpu_has_feature (int ) ;
 int mfspr (int ) ;

int set_fpexc_mode(struct task_struct *tsk, unsigned int val)
{
 struct pt_regs *regs = tsk->thread.regs;





 if (val & PR_FP_EXC_SW_ENABLE) {
  return -EINVAL;

 }






 if (val > PR_FP_EXC_PRECISE)
  return -EINVAL;
 tsk->thread.fpexc_mode = __pack_fe01(val);
 if (regs != ((void*)0) && (regs->msr & MSR_FP) != 0)
  regs->msr = (regs->msr & ~(MSR_FE0|MSR_FE1))
   | tsk->thread.fpexc_mode;
 return 0;
}
