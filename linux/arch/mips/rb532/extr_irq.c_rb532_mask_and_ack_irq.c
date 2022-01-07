
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int ack_local_irq (int ) ;
 int group_to_ip (int ) ;
 int irq_to_group (int ) ;
 int rb532_disable_irq (struct irq_data*) ;

__attribute__((used)) static void rb532_mask_and_ack_irq(struct irq_data *d)
{
 rb532_disable_irq(d);
 ack_local_irq(group_to_ip(irq_to_group(d->irq)));
}
