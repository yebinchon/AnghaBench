
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* ug_grab_exi_io_base () ;
 void* ug_io_base ;
 scalar_t__ ug_is_adapter_present () ;

void *ug_probe(void)
{
 void *exi_io_base;
 int i;

 exi_io_base = ug_grab_exi_io_base();
 if (!exi_io_base)
  return ((void*)0);


 for (i = 0; i < 2; i++) {
  ug_io_base = exi_io_base + 0x14 * i;
  if (ug_is_adapter_present())
   break;
 }
 if (i == 2)
  ug_io_base = ((void*)0);
 return ug_io_base;
}
