
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_core_chip_data {scalar_t__ desired_en; scalar_t__ current_en; int core_irq_mutex; } ;
struct irq_data {int dummy; } ;


 struct octeon_core_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int mutex_unlock (int *) ;
 int octeon_irq_core_set_enable_local ;
 int on_each_cpu (int ,struct irq_data*,int) ;

__attribute__((used)) static void octeon_irq_core_bus_sync_unlock(struct irq_data *data)
{
 struct octeon_core_chip_data *cd = irq_data_get_irq_chip_data(data);

 if (cd->desired_en != cd->current_en) {
  on_each_cpu(octeon_irq_core_set_enable_local, data, 1);

  cd->current_en = cd->desired_en;
 }

 mutex_unlock(&cd->core_irq_mutex);
}
