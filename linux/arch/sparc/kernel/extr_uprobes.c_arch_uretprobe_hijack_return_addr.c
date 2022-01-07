
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* u_regs; } ;


 size_t UREG_I7 ;

unsigned long
arch_uretprobe_hijack_return_addr(unsigned long trampoline_vaddr,
      struct pt_regs *regs)
{
 unsigned long orig_ret_vaddr = regs->u_regs[UREG_I7];

 regs->u_regs[UREG_I7] = trampoline_vaddr-8;

 return orig_ret_vaddr + 8;
}
