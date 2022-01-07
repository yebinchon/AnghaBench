
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long LC_PAGES ;
 int PFN_DOWN (int ) ;
 int PFN_PHYS (unsigned long) ;
 int * __end_rodata ;
 int __nosave_begin ;
 int __nosave_end ;
 int __pa (int *) ;
 int * _stext ;
 scalar_t__ tprot (int ) ;

int pfn_is_nosave(unsigned long pfn)
{
 unsigned long nosave_begin_pfn = PFN_DOWN(__pa(&__nosave_begin));
 unsigned long nosave_end_pfn = PFN_DOWN(__pa(&__nosave_end));
 unsigned long end_rodata_pfn = PFN_DOWN(__pa(__end_rodata)) - 1;
 unsigned long stext_pfn = PFN_DOWN(__pa(_stext));


 if (pfn <= LC_PAGES)
  return 0;
 if (pfn >= nosave_begin_pfn && pfn < nosave_end_pfn)
  return 1;

 if (pfn >= stext_pfn && pfn <= end_rodata_pfn)
  return 0;
 if (tprot(PFN_PHYS(pfn)))
  return 1;
 return 0;
}
