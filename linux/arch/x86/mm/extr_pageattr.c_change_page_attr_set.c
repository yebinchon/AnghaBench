
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 int CPA_ARRAY ;
 int __pgprot (int ) ;
 int change_page_attr_set_clr (unsigned long*,int,int ,int ,int ,int ,int *) ;

__attribute__((used)) static inline int change_page_attr_set(unsigned long *addr, int numpages,
           pgprot_t mask, int array)
{
 return change_page_attr_set_clr(addr, numpages, mask, __pgprot(0), 0,
  (array ? CPA_ARRAY : 0), ((void*)0));
}
