
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PAGE_CACHE_MODE_WT ;
 int cachemode2pgprot (int ) ;
 int change_page_attr_set (unsigned long*,int,int ,int ) ;

int _set_memory_wt(unsigned long addr, int numpages)
{
 return change_page_attr_set(&addr, numpages,
        cachemode2pgprot(_PAGE_CACHE_MODE_WT), 0);
}
