
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned int kernel_stack_pointer (struct pt_regs*) ;
 int regs_within_kernel_stack (struct pt_regs*,unsigned long) ;

unsigned long regs_get_kernel_stack_nth(struct pt_regs *regs, unsigned int n)
{
 unsigned long addr;

 addr = kernel_stack_pointer(regs) + n * sizeof(long);
 if (!regs_within_kernel_stack(regs, addr))
  return 0;
 return *(unsigned long *)addr;
}
