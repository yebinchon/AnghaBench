
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned long instruction_pointer (struct pt_regs*) ;

unsigned long uprobe_get_swbp_addr(struct pt_regs *regs)
{
 return instruction_pointer(regs);
}
