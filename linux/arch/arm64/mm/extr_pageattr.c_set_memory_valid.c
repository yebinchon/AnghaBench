
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int PTE_VALID ;
 int __change_memory_common (unsigned long,int,int ,int ) ;
 int __pgprot (int ) ;

int set_memory_valid(unsigned long addr, int numpages, int enable)
{
 if (enable)
  return __change_memory_common(addr, PAGE_SIZE * numpages,
     __pgprot(PTE_VALID),
     __pgprot(0));
 else
  return __change_memory_common(addr, PAGE_SIZE * numpages,
     __pgprot(0),
     __pgprot(PTE_VALID));
}
