
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int dummy; } ;


 int MSC01_IC_EOI ;
 int MSCIC_WRITE (int ,int ) ;
 int cpu_has_veic ;
 int mask_msc_irq (struct irq_data*) ;

__attribute__((used)) static void level_mask_and_ack_msc_irq(struct irq_data *d)
{
 mask_msc_irq(d);
 if (!cpu_has_veic)
  MSCIC_WRITE(MSC01_IC_EOI, 0);
}
