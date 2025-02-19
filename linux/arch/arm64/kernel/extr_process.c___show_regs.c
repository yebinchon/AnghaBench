
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pt_regs {scalar_t__* regs; int pmr_save; scalar_t__ pc; scalar_t__ sp; scalar_t__ compat_sp; scalar_t__ compat_lr; } ;


 int KERN_DEFAULT ;
 scalar_t__ compat_user_mode (struct pt_regs*) ;
 int pr_cont (char*,...) ;
 int print_pstate (struct pt_regs*) ;
 int printk (char*,int,...) ;
 int show_regs_print_info (int ) ;
 scalar_t__ system_uses_irq_prio_masking () ;
 int user_mode (struct pt_regs*) ;

void __show_regs(struct pt_regs *regs)
{
 int i, top_reg;
 u64 lr, sp;

 if (compat_user_mode(regs)) {
  lr = regs->compat_lr;
  sp = regs->compat_sp;
  top_reg = 12;
 } else {
  lr = regs->regs[30];
  sp = regs->sp;
  top_reg = 29;
 }

 show_regs_print_info(KERN_DEFAULT);
 print_pstate(regs);

 if (!user_mode(regs)) {
  printk("pc : %pS\n", (void *)regs->pc);
  printk("lr : %pS\n", (void *)lr);
 } else {
  printk("pc : %016llx\n", regs->pc);
  printk("lr : %016llx\n", lr);
 }

 printk("sp : %016llx\n", sp);

 if (system_uses_irq_prio_masking())
  printk("pmr_save: %08llx\n", regs->pmr_save);

 i = top_reg;

 while (i >= 0) {
  printk("x%-2d: %016llx ", i, regs->regs[i]);
  i--;

  if (i % 2 == 0) {
   pr_cont("x%-2d: %016llx ", i, regs->regs[i]);
   i--;
  }

  pr_cont("\n");
 }
}
