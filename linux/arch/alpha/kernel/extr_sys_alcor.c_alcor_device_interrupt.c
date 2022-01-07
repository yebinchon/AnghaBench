
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long* vuip ;


 scalar_t__ GRU_INT_REQ ;
 unsigned long GRU_INT_REQ_BITS ;
 unsigned int ffz (unsigned long) ;
 int handle_irq (int) ;
 int isa_device_interrupt (unsigned long) ;

__attribute__((used)) static void
alcor_device_interrupt(unsigned long vector)
{
 unsigned long pld;
 unsigned int i;


 pld = (*(vuip)GRU_INT_REQ) & GRU_INT_REQ_BITS;





 while (pld) {
  i = ffz(~pld);
  pld &= pld - 1;
  if (i == 31) {
   isa_device_interrupt(vector);
  } else {
   handle_irq(16 + i);
  }
 }
}
