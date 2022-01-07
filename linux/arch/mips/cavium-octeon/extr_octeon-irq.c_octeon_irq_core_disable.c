
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_core_chip_data {int desired_en; } ;
struct irq_data {int dummy; } ;


 struct octeon_core_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void octeon_irq_core_disable(struct irq_data *data)
{
 struct octeon_core_chip_data *cd = irq_data_get_irq_chip_data(data);
 cd->desired_en = 0;
}
