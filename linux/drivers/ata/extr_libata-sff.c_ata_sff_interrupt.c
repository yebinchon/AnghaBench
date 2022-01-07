
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int __ata_sff_interrupt (int,void*,int ) ;
 int ata_sff_port_intr ;

irqreturn_t ata_sff_interrupt(int irq, void *dev_instance)
{
 return __ata_sff_interrupt(irq, dev_instance, ata_sff_port_intr);
}
