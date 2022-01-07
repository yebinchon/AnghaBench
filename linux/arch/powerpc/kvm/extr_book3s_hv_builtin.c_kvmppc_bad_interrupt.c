
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int in_nmi; } ;


 int SIGABRT ;
 int TRAP (struct pt_regs*) ;
 int die (char*,struct pt_regs*,int ) ;
 TYPE_1__* get_paca () ;
 int machine_check_exception (struct pt_regs*) ;
 int panic (char*) ;
 int system_reset_exception (struct pt_regs*) ;

void kvmppc_bad_interrupt(struct pt_regs *regs)
{




 if (TRAP(regs) == 0x100) {
  get_paca()->in_nmi++;
  system_reset_exception(regs);
  get_paca()->in_nmi--;
 } else if (TRAP(regs) == 0x200) {
  machine_check_exception(regs);
 } else {
  die("Bad interrupt in KVM entry/exit code", regs, SIGABRT);
 }
 panic("Bad KVM trap");
}
