
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_IRQ (int) ;
 int mach_i8259_irq () ;
 int spurious_interrupt () ;

__attribute__((used)) static void i8259_irqdispatch(void)
{
 int irq;

 irq = mach_i8259_irq();
 if (irq >= 0)
  do_IRQ(irq);
 else
  spurious_interrupt();
}
