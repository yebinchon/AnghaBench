
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int nip; int dar; } ;
typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;
struct TYPE_3__ {int align_ctl; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int BUS_ADRALN ;
 int EFAULT ;
 int PR_UNALIGN_SIGBUS ;
 int SEGV_ACCERR ;
 int SIGBUS ;
 int SIGSEGV ;
 int TM_CAUSE_ALIGNMENT ;
 int TM_CAUSE_PERSISTENT ;
 int _exception (int,struct pt_regs*,int,int ) ;
 int arch_irq_disabled_regs (struct pt_regs*) ;
 int bad_page_fault (struct pt_regs*,int ,int) ;
 TYPE_2__* current ;
 int emulate_single_step (struct pt_regs*) ;
 int exception_enter () ;
 int exception_exit (int) ;
 int fix_alignment (struct pt_regs*) ;
 int local_irq_enable () ;
 scalar_t__ tm_abort_check (struct pt_regs*,int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void alignment_exception(struct pt_regs *regs)
{
 enum ctx_state prev_state = exception_enter();
 int sig, code, fixed = 0;


 if (!arch_irq_disabled_regs(regs))
  local_irq_enable();

 if (tm_abort_check(regs, TM_CAUSE_ALIGNMENT | TM_CAUSE_PERSISTENT))
  goto bail;


 if (!(current->thread.align_ctl & PR_UNALIGN_SIGBUS))
  fixed = fix_alignment(regs);

 if (fixed == 1) {
  regs->nip += 4;
  emulate_single_step(regs);
  goto bail;
 }


 if (fixed == -EFAULT) {
  sig = SIGSEGV;
  code = SEGV_ACCERR;
 } else {
  sig = SIGBUS;
  code = BUS_ADRALN;
 }
 if (user_mode(regs))
  _exception(sig, regs, code, regs->dar);
 else
  bad_page_fault(regs, regs->dar, sig);

bail:
 exception_exit(prev_state);
}
