
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int THREAD_SIZE ;
 int kernel_stack_pointer (struct pt_regs*) ;
 scalar_t__ on_irq_stack (unsigned long,int *) ;

__attribute__((used)) static bool regs_within_kernel_stack(struct pt_regs *regs, unsigned long addr)
{
 return ((addr & ~(THREAD_SIZE - 1)) ==
  (kernel_stack_pointer(regs) & ~(THREAD_SIZE - 1))) ||
  on_irq_stack(addr, ((void*)0));
}
