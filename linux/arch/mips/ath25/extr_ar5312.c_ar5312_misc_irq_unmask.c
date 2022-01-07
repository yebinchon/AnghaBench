
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int AR5312_IMR ;
 int BIT (int ) ;
 int ar5312_rst_reg_mask (int ,int ,int ) ;

__attribute__((used)) static void ar5312_misc_irq_unmask(struct irq_data *d)
{
 ar5312_rst_reg_mask(AR5312_IMR, 0, BIT(d->hwirq));
}
