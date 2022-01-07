
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ irq; } ;


 scalar_t__ IRQ_WAKEUP0 ;
 int PECR ;
 int PECR_IS (scalar_t__) ;

__attribute__((used)) static void pxa_ack_ext_wakeup(struct irq_data *d)
{
 PECR |= PECR_IS(d->irq - IRQ_WAKEUP0);
}
