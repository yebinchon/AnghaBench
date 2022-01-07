
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int nip; } ;
typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;


 int DIE_SSTEP ;
 scalar_t__ NOTIFY_STOP ;
 int SIGTRAP ;
 int TRAP_TRACE ;
 int _exception (int ,struct pt_regs*,int ,int ) ;
 int clear_br_trace (struct pt_regs*) ;
 int clear_single_step (struct pt_regs*) ;
 scalar_t__ debugger_sstep (struct pt_regs*) ;
 int exception_enter () ;
 int exception_exit (int) ;
 scalar_t__ kprobe_post_handler (struct pt_regs*) ;
 scalar_t__ notify_die (int ,char*,struct pt_regs*,int,int,int ) ;

void single_step_exception(struct pt_regs *regs)
{
 enum ctx_state prev_state = exception_enter();

 clear_single_step(regs);
 clear_br_trace(regs);

 if (kprobe_post_handler(regs))
  return;

 if (notify_die(DIE_SSTEP, "single_step", regs, 5,
     5, SIGTRAP) == NOTIFY_STOP)
  goto bail;
 if (debugger_sstep(regs))
  goto bail;

 _exception(SIGTRAP, regs, TRAP_TRACE, regs->nip);

bail:
 exception_exit(prev_state);
}
