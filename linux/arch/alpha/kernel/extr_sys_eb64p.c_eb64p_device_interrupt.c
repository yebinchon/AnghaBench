
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ffz (unsigned long) ;
 int handle_irq (int) ;
 int inb (int) ;
 int isa_device_interrupt (unsigned long) ;

__attribute__((used)) static void
eb64p_device_interrupt(unsigned long vector)
{
 unsigned long pld;
 unsigned int i;


 pld = inb(0x26) | (inb(0x27) << 8);





 while (pld) {
  i = ffz(~pld);
  pld &= pld - 1;

  if (i == 5) {
   isa_device_interrupt(vector);
  } else {
   handle_irq(16 + i);
  }
 }
}
