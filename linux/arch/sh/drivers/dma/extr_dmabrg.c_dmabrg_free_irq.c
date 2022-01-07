
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; int * handler; } ;


 int dmabrg_disable_irq (unsigned int) ;
 TYPE_1__* dmabrg_handlers ;
 scalar_t__ likely (int) ;

void dmabrg_free_irq(unsigned int dmairq)
{
 if (likely(dmairq < 10)) {
  dmabrg_disable_irq(dmairq);
  dmabrg_handlers[dmairq].handler = ((void*)0);
  dmabrg_handlers[dmairq].data = ((void*)0);
 }
}
