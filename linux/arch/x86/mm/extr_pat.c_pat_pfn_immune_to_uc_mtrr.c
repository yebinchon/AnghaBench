
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int PFN_PHYS (unsigned long) ;
 int _PAGE_CACHE_MODE_UC ;
 int _PAGE_CACHE_MODE_UC_MINUS ;
 int _PAGE_CACHE_MODE_WC ;
 int lookup_memtype (int ) ;

bool pat_pfn_immune_to_uc_mtrr(unsigned long pfn)
{
 enum page_cache_mode cm = lookup_memtype(PFN_PHYS(pfn));

 return cm == _PAGE_CACHE_MODE_UC ||
        cm == _PAGE_CACHE_MODE_UC_MINUS ||
        cm == _PAGE_CACHE_MODE_WC;
}
