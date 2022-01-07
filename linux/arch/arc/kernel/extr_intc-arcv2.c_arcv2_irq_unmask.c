
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int AUX_IRQ_ENABLE ;
 int AUX_IRQ_SELECT ;
 int write_aux_reg (int ,int) ;

__attribute__((used)) static void arcv2_irq_unmask(struct irq_data *data)
{
 write_aux_reg(AUX_IRQ_SELECT, data->hwirq);
 write_aux_reg(AUX_IRQ_ENABLE, 1);
}
