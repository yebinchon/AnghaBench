
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int nip; int msr; } ;


 int MSR_IR ;
 int NR_INSN_TO_PRINT ;
 int __kernel_text_address (unsigned long) ;
 scalar_t__ phys_to_virt (unsigned long) ;
 int pr_cont (char*,...) ;
 int printk (char*) ;
 scalar_t__ probe_kernel_address (void const*,int) ;

__attribute__((used)) static void show_instructions(struct pt_regs *regs)
{
 int i;
 unsigned long pc = regs->nip - (NR_INSN_TO_PRINT * 3 / 4 * sizeof(int));

 printk("Instruction dump:");

 for (i = 0; i < NR_INSN_TO_PRINT; i++) {
  int instr;

  if (!(i % 8))
   pr_cont("\n");





  if (!(regs->msr & MSR_IR))
   pc = (unsigned long)phys_to_virt(pc);


  if (!__kernel_text_address(pc) ||
      probe_kernel_address((const void *)pc, instr)) {
   pr_cont("XXXXXXXX ");
  } else {
   if (regs->nip == pc)
    pr_cont("<%08x> ", instr);
   else
    pr_cont("%08x ", instr);
  }

  pc += sizeof(int);
 }

 pr_cont("\n");
}
