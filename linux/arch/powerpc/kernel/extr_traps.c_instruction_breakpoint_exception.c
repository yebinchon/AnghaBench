
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int nip; } ;
typedef enum ctx_state { ____Placeholder_ctx_state } ctx_state ;


 int DIE_IABR_MATCH ;
 scalar_t__ NOTIFY_STOP ;
 int SIGTRAP ;
 int TRAP_BRKPT ;
 int _exception (int ,struct pt_regs*,int ,int ) ;
 scalar_t__ debugger_iabr_match (struct pt_regs*) ;
 int exception_enter () ;
 int exception_exit (int) ;
 scalar_t__ notify_die (int ,char*,struct pt_regs*,int,int,int ) ;

void instruction_breakpoint_exception(struct pt_regs *regs)
{
 enum ctx_state prev_state = exception_enter();

 if (notify_die(DIE_IABR_MATCH, "iabr_match", regs, 5,
     5, SIGTRAP) == NOTIFY_STOP)
  goto bail;
 if (debugger_iabr_match(regs))
  goto bail;
 _exception(SIGTRAP, regs, TRAP_BRKPT, regs->nip);

bail:
 exception_exit(prev_state);
}
