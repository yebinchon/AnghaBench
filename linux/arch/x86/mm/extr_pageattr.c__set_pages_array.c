
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int CPA_PAGES_ARRAY ;
 int EINVAL ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 int _PAGE_CACHE_MASK ;
 int _PAGE_CACHE_MODE_UC_MINUS ;
 int _PAGE_CACHE_MODE_WC ;
 int __pgprot (int ) ;
 int cachemode2pgprot (int) ;
 int change_page_attr_set_clr (int *,int,int ,int ,int ,int ,struct page**) ;
 int cpa_set_pages_array (struct page**,int,int ) ;
 int free_memtype (unsigned long,unsigned long) ;
 unsigned long page_to_pfn (struct page*) ;
 scalar_t__ reserve_memtype (unsigned long,unsigned long,int,int *) ;

__attribute__((used)) static int _set_pages_array(struct page **pages, int numpages,
  enum page_cache_mode new_type)
{
 unsigned long start;
 unsigned long end;
 enum page_cache_mode set_type;
 int i;
 int free_idx;
 int ret;

 for (i = 0; i < numpages; i++) {
  if (PageHighMem(pages[i]))
   continue;
  start = page_to_pfn(pages[i]) << PAGE_SHIFT;
  end = start + PAGE_SIZE;
  if (reserve_memtype(start, end, new_type, ((void*)0)))
   goto err_out;
 }


 set_type = (new_type == _PAGE_CACHE_MODE_WC) ?
    _PAGE_CACHE_MODE_UC_MINUS : new_type;

 ret = cpa_set_pages_array(pages, numpages,
      cachemode2pgprot(set_type));
 if (!ret && new_type == _PAGE_CACHE_MODE_WC)
  ret = change_page_attr_set_clr(((void*)0), numpages,
            cachemode2pgprot(
      _PAGE_CACHE_MODE_WC),
            __pgprot(_PAGE_CACHE_MASK),
            0, CPA_PAGES_ARRAY, pages);
 if (ret)
  goto err_out;
 return 0;
err_out:
 free_idx = i;
 for (i = 0; i < free_idx; i++) {
  if (PageHighMem(pages[i]))
   continue;
  start = page_to_pfn(pages[i]) << PAGE_SHIFT;
  end = start + PAGE_SIZE;
  free_memtype(start, end);
 }
 return -EINVAL;
}
