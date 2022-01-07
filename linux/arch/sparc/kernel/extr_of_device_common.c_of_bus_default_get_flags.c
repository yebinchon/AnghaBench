
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned long IORESOURCE_MEM ;

unsigned long of_bus_default_get_flags(const u32 *addr, unsigned long flags)
{
 if (flags)
  return flags;
 return IORESOURCE_MEM;
}
