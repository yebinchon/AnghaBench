
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 int viper_irq_enabled_mask ;
 int viper_irq_to_bitmask (int ) ;

__attribute__((used)) static void viper_unmask_irq(struct irq_data *d)
{
 viper_irq_enabled_mask |= viper_irq_to_bitmask(d->irq);
}
