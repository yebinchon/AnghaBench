
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ DBG_HOOK_HANDLED ;
 int TRAP_TRACE ;
 scalar_t__ call_step_hook (struct pt_regs*,unsigned int) ;
 int current ;
 int pr_warn (char*) ;
 int reinstall_suspended_bps (struct pt_regs*) ;
 int send_user_sigtrap (int ) ;
 int set_regs_spsr_ss (struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;
 int user_rewind_single_step (int ) ;

__attribute__((used)) static int single_step_handler(unsigned long unused, unsigned int esr,
          struct pt_regs *regs)
{
 bool handler_found = 0;





 if (!reinstall_suspended_bps(regs))
  return 0;

 if (!handler_found && call_step_hook(regs, esr) == DBG_HOOK_HANDLED)
  handler_found = 1;

 if (!handler_found && user_mode(regs)) {
  send_user_sigtrap(TRAP_TRACE);







  user_rewind_single_step(current);
 } else if (!handler_found) {
  pr_warn("Unexpected kernel single-step exception at EL1\n");




  set_regs_spsr_ss(regs);
 }

 return 0;
}
