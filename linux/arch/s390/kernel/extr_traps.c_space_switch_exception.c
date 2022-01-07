
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;
struct pt_regs {TYPE_1__ psw; } ;


 int ILL_PRVOPC ;
 int PSW_ASC_HOME ;
 int SIGILL ;
 int do_trap (struct pt_regs*,int ,int ,char*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

void space_switch_exception(struct pt_regs *regs)
{

 if (user_mode(regs))
  regs->psw.mask |= PSW_ASC_HOME;

 do_trap(regs, SIGILL, ILL_PRVOPC, "space switch event");
}
