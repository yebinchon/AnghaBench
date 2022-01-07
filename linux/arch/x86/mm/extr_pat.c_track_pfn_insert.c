
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pgprot_t ;
typedef int pfn_t ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int _PAGE_CACHE_MASK ;
 int __pgprot (int) ;
 int cachemode2protval (int) ;
 int lookup_memtype (int ) ;
 int pat_enabled () ;
 int pfn_t_to_phys (int ) ;
 int pgprot_val (int ) ;

void track_pfn_insert(struct vm_area_struct *vma, pgprot_t *prot, pfn_t pfn)
{
 enum page_cache_mode pcm;

 if (!pat_enabled())
  return;


 pcm = lookup_memtype(pfn_t_to_phys(pfn));
 *prot = __pgprot((pgprot_val(*prot) & (~_PAGE_CACHE_MASK)) |
    cachemode2protval(pcm));
}
