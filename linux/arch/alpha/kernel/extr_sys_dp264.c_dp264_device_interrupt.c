
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long csr; } ;
struct TYPE_4__ {TYPE_1__ dir0; } ;


 TYPE_2__* TSUNAMI_cchip ;
 unsigned int ffz (unsigned long) ;
 int handle_irq (int) ;
 int isa_device_interrupt (unsigned long) ;

__attribute__((used)) static void
dp264_device_interrupt(unsigned long vector)
{
 unsigned long pld;
 unsigned int i;


 pld = TSUNAMI_cchip->dir0.csr;





 while (pld) {
  i = ffz(~pld);
  pld &= pld - 1;
  if (i == 55)
   isa_device_interrupt(vector);
  else
   handle_irq(16 + i);
 }
}
