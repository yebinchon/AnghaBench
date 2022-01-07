
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long* vulp ;


 scalar_t__ PYXIS_INT_REQ ;
 unsigned long cached_irq_mask ;
 unsigned int ffz (unsigned long) ;
 int handle_irq (int) ;
 int isa_device_interrupt (unsigned long) ;

void
pyxis_device_interrupt(unsigned long vector)
{
 unsigned long pld;
 unsigned int i;


 pld = *(vulp)PYXIS_INT_REQ;
 pld &= cached_irq_mask;





 while (pld) {
  i = ffz(~pld);
  pld &= pld - 1;
  if (i == 7)
   isa_device_interrupt(vector);
  else
   handle_irq(16+i);
 }
}
