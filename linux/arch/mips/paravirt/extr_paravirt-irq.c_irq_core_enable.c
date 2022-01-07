
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct core_chip_data {int desired_en; } ;


 struct core_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void irq_core_enable(struct irq_data *data)
{
 struct core_chip_data *cd = irq_data_get_irq_chip_data(data);
 cd->desired_en = 1;
}
