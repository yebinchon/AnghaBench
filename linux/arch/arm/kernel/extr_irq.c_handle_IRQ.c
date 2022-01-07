
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int __handle_domain_irq (int *,unsigned int,int,struct pt_regs*) ;

void handle_IRQ(unsigned int irq, struct pt_regs *regs)
{
 __handle_domain_irq(((void*)0), irq, 0, regs);
}
