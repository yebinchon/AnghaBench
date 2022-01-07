
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOONGSON_INTEN ;
 int LOONGSON_INTENCLR ;
 int PIC_MASTER_IMR ;
 int PIC_SLAVE_IMR ;
 int cached_bonito_irq_mask ;
 void* cached_master_mask ;
 void* cached_slave_mask ;
 void* inb (int ) ;
 int local_irq_disable () ;
 int outb (int,int ) ;

void arch_suspend_disable_irqs(void)
{

 local_irq_disable();
 cached_bonito_irq_mask = LOONGSON_INTEN;
 LOONGSON_INTENCLR = 0xffff;
 (void)LOONGSON_INTENCLR;
}
