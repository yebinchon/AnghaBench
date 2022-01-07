
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void (* handler ) (void*) ;void* data; } ;


 int EBUSY ;
 int ENOENT ;
 int dmabrg_enable_irq (unsigned int) ;
 TYPE_1__* dmabrg_handlers ;

int dmabrg_request_irq(unsigned int dmairq, void(*handler)(void*),
         void *data)
{
 if ((dmairq > 9) || !handler)
  return -ENOENT;
 if (dmabrg_handlers[dmairq].handler)
  return -EBUSY;

 dmabrg_handlers[dmairq].handler = handler;
 dmabrg_handlers[dmairq].data = data;

 dmabrg_enable_irq(dmairq);
 return 0;
}
