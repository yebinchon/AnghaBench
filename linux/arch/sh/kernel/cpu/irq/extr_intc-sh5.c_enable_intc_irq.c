
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned int irq; } ;


 unsigned long INTC_INTENB_0 ;
 unsigned long INTC_INTENB_1 ;
 unsigned int IRQ_IRL3 ;
 scalar_t__ NO_PRIORITY ;
 int __raw_writel (unsigned long,unsigned long) ;
 scalar_t__ irlm ;
 int printk (char*) ;

__attribute__((used)) static void enable_intc_irq(struct irq_data *data)
{
 unsigned int irq = data->irq;
 unsigned long reg;
 unsigned long bitmask;

 if ((irq <= IRQ_IRL3) && (irlm == NO_PRIORITY))
  printk("Trying to use straight IRL0-3 with an encoding platform.\n");

 if (irq < 32) {
  reg = INTC_INTENB_0;
  bitmask = 1 << irq;
 } else {
  reg = INTC_INTENB_1;
  bitmask = 1 << (irq - 32);
 }

 __raw_writel(bitmask, reg);
}
