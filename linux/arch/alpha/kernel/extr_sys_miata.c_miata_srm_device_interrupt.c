
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_irq (int) ;

__attribute__((used)) static void
miata_srm_device_interrupt(unsigned long vector)
{
 int irq;

 irq = (vector - 0x800) >> 4;
 if (irq >= 16)
  irq = irq + 8;

 handle_irq(irq);
}
