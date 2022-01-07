
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int disable_irq_nosync (unsigned int) ;
 int enable_irq (unsigned int) ;
 int handle_level_irq ;
 int i8259A_chip ;
 int io_apic_irqs ;
 int irq_set_chip_and_handler (unsigned int,int *,int ) ;
 int lapic_assign_legacy_vector (unsigned int,int) ;

__attribute__((used)) static void make_8259A_irq(unsigned int irq)
{
 disable_irq_nosync(irq);
 io_apic_irqs &= ~(1<<irq);
 irq_set_chip_and_handler(irq, &i8259A_chip, handle_level_irq);
 enable_irq(irq);
 lapic_assign_legacy_vector(irq, 1);
}
