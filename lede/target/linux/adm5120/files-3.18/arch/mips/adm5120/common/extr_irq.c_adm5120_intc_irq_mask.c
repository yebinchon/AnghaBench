
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int ADM5120_INTC_IRQ_BASE ;
 int INTC_REG_IRQ_DISABLE ;
 int intc_write_reg (int ,int) ;

__attribute__((used)) static void adm5120_intc_irq_mask(struct irq_data *d)
{
 intc_write_reg(INTC_REG_IRQ_DISABLE, 1 << (d->irq - ADM5120_INTC_IRQ_BASE));
}
