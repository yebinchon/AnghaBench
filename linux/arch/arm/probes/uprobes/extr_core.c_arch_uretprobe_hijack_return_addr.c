
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long ARM_lr; } ;



unsigned long
arch_uretprobe_hijack_return_addr(unsigned long trampoline_vaddr,
      struct pt_regs *regs)
{
 unsigned long orig_ret_vaddr;

 orig_ret_vaddr = regs->ARM_lr;

 regs->ARM_lr = trampoline_vaddr;
 return orig_ret_vaddr;
}
