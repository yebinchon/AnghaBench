
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct bcma_bus {scalar_t__ mmio; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 bcma_scan_read32(struct bcma_bus *bus, u8 current_coreidx,
         u16 offset)
{
 return readl(bus->mmio + offset);
}
