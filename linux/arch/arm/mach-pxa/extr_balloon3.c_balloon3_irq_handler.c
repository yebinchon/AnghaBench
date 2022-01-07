
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
struct irq_data {int dummy; } ;
struct irq_chip {int (* irq_ack ) (struct irq_data*) ;} ;


 int BALLOON3_INT_CONTROL_REG ;
 unsigned int BALLOON3_IRQ (int ) ;
 unsigned int __ffs (unsigned long) ;
 unsigned long __raw_readl (int ) ;
 unsigned long balloon3_irq_enabled ;
 int generic_handle_irq (unsigned int) ;
 struct irq_chip* irq_desc_get_chip (struct irq_desc*) ;
 struct irq_data* irq_desc_get_irq_data (struct irq_desc*) ;
 int stub1 (struct irq_data*) ;

__attribute__((used)) static void balloon3_irq_handler(struct irq_desc *desc)
{
 unsigned long pending = __raw_readl(BALLOON3_INT_CONTROL_REG) &
     balloon3_irq_enabled;
 do {
  struct irq_data *d = irq_desc_get_irq_data(desc);
  struct irq_chip *chip = irq_desc_get_chip(desc);
  unsigned int irq;


  if (chip->irq_ack)
   chip->irq_ack(d);

  while (pending) {
   irq = BALLOON3_IRQ(0) + __ffs(pending);
   generic_handle_irq(irq);
   pending &= pending - 1;
  }
  pending = __raw_readl(BALLOON3_INT_CONTROL_REG) &
    balloon3_irq_enabled;
 } while (pending);
}
