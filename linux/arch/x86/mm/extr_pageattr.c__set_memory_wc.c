
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PAGE_CACHE_MASK ;
 int _PAGE_CACHE_MODE_UC_MINUS ;
 int _PAGE_CACHE_MODE_WC ;
 int __pgprot (int ) ;
 int cachemode2pgprot (int ) ;
 int change_page_attr_set (unsigned long*,int,int ,int ) ;
 int change_page_attr_set_clr (unsigned long*,int,int ,int ,int ,int ,int *) ;

int _set_memory_wc(unsigned long addr, int numpages)
{
 int ret;

 ret = change_page_attr_set(&addr, numpages,
       cachemode2pgprot(_PAGE_CACHE_MODE_UC_MINUS),
       0);
 if (!ret) {
  ret = change_page_attr_set_clr(&addr, numpages,
            cachemode2pgprot(_PAGE_CACHE_MODE_WC),
            __pgprot(_PAGE_CACHE_MASK),
            0, 0, ((void*)0));
 }
 return ret;
}
