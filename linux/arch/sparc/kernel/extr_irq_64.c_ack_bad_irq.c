
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pr_crit (char*,unsigned int) ;

void ack_bad_irq(unsigned int irq)
{
 pr_crit("BAD IRQ ack %d\n", irq);
}
