
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_irq_chip_data {int irq; int irq_chip; } ;
struct irq_domain {struct regmap_irq_chip_data* host_data; } ;
typedef int irq_hw_number_t ;


 int irq_set_chip (unsigned int,int *) ;
 int irq_set_chip_data (unsigned int,struct regmap_irq_chip_data*) ;
 int irq_set_nested_thread (unsigned int,int) ;
 int irq_set_noprobe (unsigned int) ;
 int irq_set_parent (unsigned int,int ) ;

__attribute__((used)) static int regmap_irq_map(struct irq_domain *h, unsigned int virq,
     irq_hw_number_t hw)
{
 struct regmap_irq_chip_data *data = h->host_data;

 irq_set_chip_data(virq, data);
 irq_set_chip(virq, &data->irq_chip);
 irq_set_nested_thread(virq, 1);
 irq_set_parent(virq, data->irq);
 irq_set_noprobe(virq);

 return 0;
}
