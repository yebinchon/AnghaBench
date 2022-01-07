
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int ARCV2_IRQ_DEF_PRIO ;
 int AUX_IRQ_ENABLE ;
 int AUX_IRQ_PRIORITY ;
 int AUX_IRQ_SELECT ;
 int write_aux_reg (int ,int) ;

void arcv2_irq_enable(struct irq_data *data)
{

 write_aux_reg(AUX_IRQ_SELECT, data->hwirq);
 write_aux_reg(AUX_IRQ_PRIORITY, ARCV2_IRQ_DEF_PRIO);






 write_aux_reg(AUX_IRQ_ENABLE, 1);
}
