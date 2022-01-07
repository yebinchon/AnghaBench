
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int pmf_do_irq (void*) ;

__attribute__((used)) static irqreturn_t macio_gpio_irq(int irq, void *data)
{
 pmf_do_irq(data);

 return IRQ_HANDLED;
}
