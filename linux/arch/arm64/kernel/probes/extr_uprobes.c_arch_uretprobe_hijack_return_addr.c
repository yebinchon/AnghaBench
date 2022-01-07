
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long procedure_link_pointer (struct pt_regs*) ;
 int procedure_link_pointer_set (struct pt_regs*,unsigned long) ;

unsigned long
arch_uretprobe_hijack_return_addr(unsigned long trampoline_vaddr,
      struct pt_regs *regs)
{
 unsigned long orig_ret_vaddr;

 orig_ret_vaddr = procedure_link_pointer(regs);

 procedure_link_pointer_set(regs, trampoline_vaddr);

 return orig_ret_vaddr;
}
