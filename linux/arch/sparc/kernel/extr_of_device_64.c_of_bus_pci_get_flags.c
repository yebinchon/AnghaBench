
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 unsigned long IORESOURCE_IO ;
 unsigned long IORESOURCE_MEM ;
 unsigned long IORESOURCE_PREFETCH ;

__attribute__((used)) static unsigned long of_bus_pci_get_flags(const u32 *addr, unsigned long flags)
{
 u32 w = addr[0];


 flags = 0;
 switch((w >> 24) & 0x03) {
 case 0x01:
  flags |= IORESOURCE_IO;
  break;

 case 0x02:
 case 0x03:
  flags |= IORESOURCE_MEM;
  break;
 }
 if (w & 0x40000000)
  flags |= IORESOURCE_PREFETCH;
 return flags;
}
