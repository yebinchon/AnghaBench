
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct page {int dummy; } ;
struct memtype {int type; } ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;
struct TYPE_2__ {scalar_t__ (* is_untracked_pat_range ) (int,scalar_t__) ;} ;


 int PAGE_SHIFT ;
 scalar_t__ PAGE_SIZE ;
 int _PAGE_CACHE_MODE_UC_MINUS ;
 int _PAGE_CACHE_MODE_WB ;
 int get_page_memtype (struct page*) ;
 int memtype_lock ;
 scalar_t__ pat_pagerange_is_ram (int,scalar_t__) ;
 struct page* pfn_to_page (int) ;
 struct memtype* rbt_memtype_lookup (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ stub1 (int,scalar_t__) ;
 TYPE_1__ x86_platform ;

__attribute__((used)) static enum page_cache_mode lookup_memtype(u64 paddr)
{
 enum page_cache_mode rettype = _PAGE_CACHE_MODE_WB;
 struct memtype *entry;

 if (x86_platform.is_untracked_pat_range(paddr, paddr + PAGE_SIZE))
  return rettype;

 if (pat_pagerange_is_ram(paddr, paddr + PAGE_SIZE)) {
  struct page *page;

  page = pfn_to_page(paddr >> PAGE_SHIFT);
  return get_page_memtype(page);
 }

 spin_lock(&memtype_lock);

 entry = rbt_memtype_lookup(paddr);
 if (entry != ((void*)0))
  rettype = entry->type;
 else
  rettype = _PAGE_CACHE_MODE_UC_MINUS;

 spin_unlock(&memtype_lock);
 return rettype;
}
