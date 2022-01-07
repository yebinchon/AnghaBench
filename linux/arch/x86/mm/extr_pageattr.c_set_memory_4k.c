
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pgprot (int ) ;
 int change_page_attr_set_clr (unsigned long*,int,int ,int ,int,int ,int *) ;

int set_memory_4k(unsigned long addr, int numpages)
{
 return change_page_attr_set_clr(&addr, numpages, __pgprot(0),
     __pgprot(0), 1, 0, ((void*)0));
}
