
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int UPROBE_SS_ARM_INSN ;
 int UPROBE_SWBP_ARM_INSN ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int uprobe_post_sstep_notifier (struct pt_regs*) ;
 int uprobe_pre_sstep_notifier (struct pt_regs*) ;

__attribute__((used)) static int uprobe_trap_handler(struct pt_regs *regs, unsigned int instr)
{
 unsigned long flags;

 local_irq_save(flags);
 instr &= 0x0fffffff;
 if (instr == (UPROBE_SWBP_ARM_INSN & 0x0fffffff))
  uprobe_pre_sstep_notifier(regs);
 else if (instr == (UPROBE_SS_ARM_INSN & 0x0fffffff))
  uprobe_post_sstep_notifier(regs);
 local_irq_restore(flags);

 return 0;
}
