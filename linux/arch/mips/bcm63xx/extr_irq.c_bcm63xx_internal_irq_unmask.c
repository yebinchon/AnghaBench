
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int internal_irq_unmask (struct irq_data*,int *) ;

__attribute__((used)) static void bcm63xx_internal_irq_unmask(struct irq_data *d)
{
 internal_irq_unmask(d, ((void*)0));
}
