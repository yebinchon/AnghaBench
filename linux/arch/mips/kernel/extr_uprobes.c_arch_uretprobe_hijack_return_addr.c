
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {unsigned long* regs; } ;



unsigned long arch_uretprobe_hijack_return_addr(
 unsigned long trampoline_vaddr, struct pt_regs *regs)
{
 unsigned long ra;

 ra = regs->regs[31];


 regs->regs[31] = trampoline_vaddr;

 return ra;
}
