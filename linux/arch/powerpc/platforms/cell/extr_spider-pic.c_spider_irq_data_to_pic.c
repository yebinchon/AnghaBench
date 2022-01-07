
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_pic {int dummy; } ;
struct irq_data {int dummy; } ;


 struct spider_pic* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static struct spider_pic *spider_irq_data_to_pic(struct irq_data *d)
{
 return irq_data_get_irq_chip_data(d);
}
