
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int die_if_kernel (char*,struct pt_regs*) ;
 int exception_enter () ;

void do_paw(struct pt_regs *regs)
{
 exception_enter();
 die_if_kernel("TL0: Phys Watchpoint Exception", regs);
}
