
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ MIPS_BE_DISCARD ;
 int SIGBUS ;
 int count_be_interrupt ;
 scalar_t__ debug_be_interrupt ;
 int die_if_kernel (char*,struct pt_regs*) ;
 int force_sig (int ) ;
 struct pt_regs* get_irq_regs () ;
 scalar_t__ ip28_be_interrupt (struct pt_regs*) ;
 int show_regs (struct pt_regs*) ;

void ip22_be_interrupt(int irq)
{
 struct pt_regs *regs = get_irq_regs();

 count_be_interrupt++;

 if (ip28_be_interrupt(regs) != MIPS_BE_DISCARD) {

  die_if_kernel("Oops", regs);
  force_sig(SIGBUS);
 } else if (debug_be_interrupt)
  show_regs(regs);
}
