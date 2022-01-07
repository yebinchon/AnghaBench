
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int hwirq; } ;


 int AUX_IENABLE ;
 unsigned int read_aux_reg (int ) ;
 int write_aux_reg (int ,unsigned int) ;

__attribute__((used)) static void arc_irq_mask(struct irq_data *data)
{
 unsigned int ienb;

 ienb = read_aux_reg(AUX_IENABLE);
 ienb &= ~(1 << data->hwirq);
 write_aux_reg(AUX_IENABLE, ienb);
}
