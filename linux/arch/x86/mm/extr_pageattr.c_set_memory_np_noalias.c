
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPA_NO_CHECK_ALIAS ;
 int _PAGE_PRESENT ;
 int __pgprot (int ) ;
 int change_page_attr_set_clr (unsigned long*,int,int ,int ,int ,int,int *) ;

int set_memory_np_noalias(unsigned long addr, int numpages)
{
 int cpa_flags = CPA_NO_CHECK_ALIAS;

 return change_page_attr_set_clr(&addr, numpages, __pgprot(0),
     __pgprot(_PAGE_PRESENT), 0,
     cpa_flags, ((void*)0));
}
