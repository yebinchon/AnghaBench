
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ffz (unsigned long) ;
 int handle_irq (int) ;
 int inb (int) ;
 int isa_device_interrupt (unsigned long) ;

__attribute__((used)) static void
cabriolet_device_interrupt(unsigned long v)
{
 unsigned long pld;
 unsigned int i;


 pld = inb(0x804) | (inb(0x805) << 8) | (inb(0x806) << 16);





 while (pld) {
  i = ffz(~pld);
  pld &= pld - 1;
  if (i == 4) {
   isa_device_interrupt(v);
  } else {
   handle_irq(16 + i);
  }
 }
}
