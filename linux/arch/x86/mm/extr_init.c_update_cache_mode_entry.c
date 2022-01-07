
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum page_cache_mode { ____Placeholder_page_cache_mode } page_cache_mode ;


 int BUG_ON (int) ;
 int _PAGE_CACHE_MODE_WB ;
 int * __cachemode2pte_tbl ;
 int __cm_idx2pte (unsigned int) ;
 int* __pte2cachemode_tbl ;

void update_cache_mode_entry(unsigned entry, enum page_cache_mode cache)
{

 BUG_ON(!entry && cache != _PAGE_CACHE_MODE_WB);

 __cachemode2pte_tbl[cache] = __cm_idx2pte(entry);
 __pte2cachemode_tbl[entry] = cache;
}
