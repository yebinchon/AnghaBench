
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int IRQ_DISABLE_REG ;
 int intc_write_reg (int,int ) ;

__attribute__((used)) static void ack_adm8668_irq(struct irq_data *d)
{
 intc_write_reg((1 << d->irq), IRQ_DISABLE_REG);
}
