
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int unmask_irq (struct irq_data*) ;

__attribute__((used)) static unsigned int
iosapic_startup_level_irq (struct irq_data *data)
{
 unmask_irq(data);
 return 0;
}
