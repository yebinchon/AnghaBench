
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int irq_get_irq_data (unsigned int) ;
 int ps3_chip_mask (int ) ;
 int ps3_irq_plug_destroy (unsigned int) ;

int ps3_spe_irq_destroy(unsigned int virq)
{
 int result;

 ps3_chip_mask(irq_get_irq_data(virq));

 result = ps3_irq_plug_destroy(virq);
 BUG_ON(result);

 return result;
}
