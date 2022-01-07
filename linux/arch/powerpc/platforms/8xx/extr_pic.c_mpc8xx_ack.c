
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_2__ {int sc_sipend; } ;


 int mpc8xx_irqd_to_bit (struct irq_data*) ;
 int out_be32 (int *,int ) ;
 TYPE_1__* siu_reg ;

__attribute__((used)) static void mpc8xx_ack(struct irq_data *d)
{
 out_be32(&siu_reg->sc_sipend, mpc8xx_irqd_to_bit(d));
}
