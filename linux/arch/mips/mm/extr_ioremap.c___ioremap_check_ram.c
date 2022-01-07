
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PageReserved (int ) ;
 int pfn_to_page (unsigned long) ;
 scalar_t__ pfn_valid (unsigned long) ;

__attribute__((used)) static int __ioremap_check_ram(unsigned long start_pfn, unsigned long nr_pages,
          void *arg)
{
 unsigned long i;

 for (i = 0; i < nr_pages; i++) {
  if (pfn_valid(start_pfn + i) &&
      !PageReserved(pfn_to_page(start_pfn + i)))
   return 1;
 }

 return 0;
}
