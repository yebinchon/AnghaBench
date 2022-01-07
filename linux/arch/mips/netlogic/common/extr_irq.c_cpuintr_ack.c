
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int ack_c0_eirr (int ) ;

__attribute__((used)) static void cpuintr_ack(struct irq_data *d)
{
 ack_c0_eirr(d->irq);
}
