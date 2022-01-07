
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ARM_cpsr; int ARM_pc; int ARM_lr; int ARM_sp; int ARM_ip; int ARM_fp; int ARM_r10; int ARM_r9; int ARM_r8; int ARM_r7; int ARM_r6; int ARM_r5; int ARM_r4; int ARM_r3; int ARM_r2; int ARM_r1; int ARM_r0; } ;


 int pr_err (char*,int ,...) ;

__attribute__((used)) static void print_registers(struct pt_regs *regs)
{
 pr_err("r0  %08lx | r1  %08lx | r2  %08lx | r3  %08lx\n",
  regs->ARM_r0, regs->ARM_r1, regs->ARM_r2, regs->ARM_r3);
 pr_err("r4  %08lx | r5  %08lx | r6  %08lx | r7  %08lx\n",
  regs->ARM_r4, regs->ARM_r5, regs->ARM_r6, regs->ARM_r7);
 pr_err("r8  %08lx | r9  %08lx | r10 %08lx | r11 %08lx\n",
  regs->ARM_r8, regs->ARM_r9, regs->ARM_r10, regs->ARM_fp);
 pr_err("r12 %08lx | sp  %08lx | lr  %08lx | pc  %08lx\n",
  regs->ARM_ip, regs->ARM_sp, regs->ARM_lr, regs->ARM_pc);
 pr_err("cpsr %08lx\n", regs->ARM_cpsr);
}
