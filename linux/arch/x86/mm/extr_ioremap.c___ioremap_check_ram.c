
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; int end; } ;


 int IORESOURCE_SYSTEM_RAM ;
 unsigned int IORES_MAP_SYSTEM_RAM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int PageReserved (int ) ;
 int pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;

__attribute__((used)) static unsigned int __ioremap_check_ram(struct resource *res)
{
 unsigned long start_pfn, stop_pfn;
 unsigned long i;

 if ((res->flags & IORESOURCE_SYSTEM_RAM) != IORESOURCE_SYSTEM_RAM)
  return 0;

 start_pfn = (res->start + PAGE_SIZE - 1) >> PAGE_SHIFT;
 stop_pfn = (res->end + 1) >> PAGE_SHIFT;
 if (stop_pfn > start_pfn) {
  for (i = 0; i < (stop_pfn - start_pfn); ++i)
   if (pfn_valid(start_pfn + i) &&
       !PageReserved(pfn_to_page(start_pfn + i)))
    return IORES_MAP_SYSTEM_RAM;
 }

 return 0;
}
