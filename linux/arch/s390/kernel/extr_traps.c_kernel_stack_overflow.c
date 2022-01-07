
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int bust_spinlocks (int) ;
 int panic (char*) ;
 int printk (char*) ;
 int show_regs (struct pt_regs*) ;

void kernel_stack_overflow(struct pt_regs *regs)
{
 bust_spinlocks(1);
 printk("Kernel stack overflow.\n");
 show_regs(regs);
 bust_spinlocks(0);
 panic("Corrupt kernel stack, can't continue.");
}
