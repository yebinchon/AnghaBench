
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {int sc_siel; } ;


 unsigned int IRQ_TYPE_EDGE_FALLING ;
 int handle_edge_irq ;
 unsigned int in_be32 (int *) ;
 int irq_set_handler_locked (struct irq_data*,int ) ;
 int irqd_to_hwirq (struct irq_data*) ;
 unsigned int mpc8xx_irqd_to_bit (struct irq_data*) ;
 int out_be32 (int *,unsigned int) ;
 TYPE_1__* siu_reg ;

__attribute__((used)) static int mpc8xx_set_irq_type(struct irq_data *d, unsigned int flow_type)
{

 if ((flow_type & IRQ_TYPE_EDGE_FALLING) && !(irqd_to_hwirq(d) & 1)) {
  unsigned int siel = in_be32(&siu_reg->sc_siel);
  siel |= mpc8xx_irqd_to_bit(d);
  out_be32(&siu_reg->sc_siel, siel);
  irq_set_handler_locked(d, handle_edge_irq);
 }
 return 0;
}
