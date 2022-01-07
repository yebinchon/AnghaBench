
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOONGSON_INTENSET ;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_IMR ;
 int cached_bonito_irq_mask ;
 int cached_master_mask ;
 int cached_slave_mask ;
 int local_irq_enable () ;
 int outb (int ,int ) ;

void arch_suspend_enable_irqs(void)
{

 local_irq_enable();






 LOONGSON_INTENSET = cached_bonito_irq_mask;
 (void)LOONGSON_INTENSET;
}
