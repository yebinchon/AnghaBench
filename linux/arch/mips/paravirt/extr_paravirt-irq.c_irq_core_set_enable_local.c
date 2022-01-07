
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;
struct core_chip_data {int bit; scalar_t__ desired_en; } ;


 int clear_c0_status (unsigned int) ;
 struct core_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;
 int set_c0_status (unsigned int) ;

__attribute__((used)) static void irq_core_set_enable_local(void *arg)
{
 struct irq_data *data = arg;
 struct core_chip_data *cd = irq_data_get_irq_chip_data(data);
 unsigned int mask = 0x100 << cd->bit;




 if (cd->desired_en)
  set_c0_status(mask);
 else
  clear_c0_status(mask);

}
