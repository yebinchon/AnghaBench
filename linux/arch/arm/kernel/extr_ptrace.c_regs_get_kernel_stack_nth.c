
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 scalar_t__ kernel_stack_pointer (struct pt_regs*) ;
 scalar_t__ regs_within_kernel_stack (struct pt_regs*,unsigned long) ;

unsigned long regs_get_kernel_stack_nth(struct pt_regs *regs, unsigned int n)
{
 unsigned long *addr = (unsigned long *)kernel_stack_pointer(regs);
 addr += n;
 if (regs_within_kernel_stack(regs, (unsigned long)addr))
  return *addr;
 else
  return 0;
}
