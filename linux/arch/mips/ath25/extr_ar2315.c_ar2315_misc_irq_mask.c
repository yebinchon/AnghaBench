
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int AR2315_IMR ;
 int BIT (int ) ;
 int ar2315_rst_reg_mask (int ,int ,int ) ;

__attribute__((used)) static void ar2315_misc_irq_mask(struct irq_data *d)
{
 ar2315_rst_reg_mask(AR2315_IMR, BIT(d->hwirq), 0);
}
