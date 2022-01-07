
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 scalar_t__ PCIIACK_BASE ;
 unsigned int _ISA_IRQ (int) ;
 int do_bad_IRQ (struct irq_desc*) ;
 int generic_handle_irq (unsigned int) ;

__attribute__((used)) static void isa_irq_handler(struct irq_desc *desc)
{
 unsigned int isa_irq = *(unsigned char *)PCIIACK_BASE;

 if (isa_irq < _ISA_IRQ(0) || isa_irq >= _ISA_IRQ(16)) {
  do_bad_IRQ(desc);
  return;
 }

 generic_handle_irq(isa_irq);
}
