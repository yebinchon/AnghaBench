
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int THREAD_SIZE ;
 unsigned long kernel_stack_pointer (struct pt_regs*) ;

__attribute__((used)) static int regs_within_kernel_stack(struct pt_regs *regs, unsigned long addr)
{
 unsigned long ksp = kernel_stack_pointer(regs);

 return (addr & ~(THREAD_SIZE - 1)) == (ksp & ~(THREAD_SIZE - 1));
}
