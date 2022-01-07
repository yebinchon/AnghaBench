
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_irq (int) ;
 int inw (int) ;
 int isa_device_interrupt (unsigned long) ;

__attribute__((used)) static void
eiger_device_interrupt(unsigned long vector)
{
 unsigned intstatus;
 intstatus = inw(0x500) & 15;
 if (intstatus) {





  if (intstatus & 8) handle_irq(16+3);
  if (intstatus & 4) handle_irq(16+2);
  if (intstatus & 2) handle_irq(16+1);
  if (intstatus & 1) handle_irq(16+0);
 } else {
  isa_device_interrupt(vector);
 }
}
