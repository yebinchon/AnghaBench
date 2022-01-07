
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ DBG_HOOK_HANDLED ;
 int EFAULT ;
 int TRAP_BRKPT ;
 scalar_t__ call_break_hook (struct pt_regs*,unsigned int) ;
 int pr_warn (char*) ;
 int send_user_sigtrap (int ) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int brk_handler(unsigned long unused, unsigned int esr,
         struct pt_regs *regs)
{
 if (call_break_hook(regs, esr) == DBG_HOOK_HANDLED)
  return 0;

 if (user_mode(regs)) {
  send_user_sigtrap(TRAP_BRKPT);
 } else {
  pr_warn("Unexpected kernel BRK exception at EL1\n");
  return -EFAULT;
 }

 return 0;
}
