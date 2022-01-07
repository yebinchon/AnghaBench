
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {scalar_t__ chip_data; } ;


 int LEON3_BYPASS_STORE_PA (int ,unsigned long) ;
 unsigned long LEON_DO_ACK_HW ;
 int LEON_IACK ;

__attribute__((used)) static void leon_eoi_irq(struct irq_data *data)
{
 unsigned long mask = (unsigned long)data->chip_data;

 if (mask & LEON_DO_ACK_HW)
  LEON3_BYPASS_STORE_PA(LEON_IACK, mask & ~LEON_DO_ACK_HW);
}
