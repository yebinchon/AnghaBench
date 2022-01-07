
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int MCFEPORT_EPFR ;
 int __raw_writeb (int,int ) ;
 unsigned int irq2ebit (int ) ;

__attribute__((used)) static void intc_irq_ack(struct irq_data *d)
{
 unsigned int ebit = irq2ebit(d->irq);

 __raw_writeb(0x1 << ebit, MCFEPORT_EPFR);
}
