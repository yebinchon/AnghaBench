
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long IORESOURCE_MEM_64 ;
 unsigned long IORESOURCE_PREFETCH ;

__attribute__((used)) static inline bool pnv_pci_is_m64_flags(unsigned long resource_flags)
{
 unsigned long flags = (IORESOURCE_MEM_64 | IORESOURCE_PREFETCH);

 return (resource_flags & flags) == flags;
}
