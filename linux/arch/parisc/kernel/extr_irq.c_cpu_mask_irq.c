
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;


 unsigned long EIEM_MASK (int ) ;
 unsigned long cpu_eiem ;

__attribute__((used)) static void cpu_mask_irq(struct irq_data *d)
{
 unsigned long eirr_bit = EIEM_MASK(d->irq);

 cpu_eiem &= ~eirr_bit;




}
