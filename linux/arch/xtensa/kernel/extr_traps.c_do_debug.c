
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SIGKILL ;
 int SIGTRAP ;
 int __die_if_kernel (char*,struct pt_regs*,int ) ;
 int check_hw_breakpoint (struct pt_regs*) ;
 int force_sig (int ) ;
 int preempt_enable () ;

void
do_debug(struct pt_regs *regs)
{







 __die_if_kernel("Breakpoint in kernel", regs, SIGKILL);



 force_sig(SIGTRAP);
}
