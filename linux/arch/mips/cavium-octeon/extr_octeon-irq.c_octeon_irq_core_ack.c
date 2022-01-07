
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_core_chip_data {unsigned int bit; } ;
struct irq_data {int dummy; } ;


 int clear_c0_cause (int) ;
 int clear_c0_status (int) ;
 struct octeon_core_chip_data* irq_data_get_irq_chip_data (struct irq_data*) ;

__attribute__((used)) static void octeon_irq_core_ack(struct irq_data *data)
{
 struct octeon_core_chip_data *cd = irq_data_get_irq_chip_data(data);
 unsigned int bit = cd->bit;






 clear_c0_status(0x100 << bit);

 if (bit < 2)
  clear_c0_cause(0x100 << bit);
}
