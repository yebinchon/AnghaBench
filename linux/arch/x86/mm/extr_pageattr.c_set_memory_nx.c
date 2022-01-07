
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PAGE_NX ;
 int __pgprot (int) ;
 int __supported_pte_mask ;
 int change_page_attr_set (unsigned long*,int,int ,int ) ;

int set_memory_nx(unsigned long addr, int numpages)
{
 if (!(__supported_pte_mask & _PAGE_NX))
  return 0;

 return change_page_attr_set(&addr, numpages, __pgprot(_PAGE_NX), 0);
}
