
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_chip {int dummy; } ;


 struct irq_chip xive_irq_chip ;

bool is_xive_irq(struct irq_chip *chip)
{
 return chip == &xive_irq_chip;
}
