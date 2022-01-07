
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 void* __va (unsigned long) ;
 int * find_init_mm_pte (unsigned long,int *) ;
 unsigned long pte_pfn (int ) ;
 int pte_present (int ) ;

__attribute__((used)) static void *real_vmalloc_addr(void *x)
{
 unsigned long addr = (unsigned long) x;
 pte_t *p;





 p = find_init_mm_pte(addr, ((void*)0));
 if (!p || !pte_present(*p))
  return ((void*)0);
 addr = (pte_pfn(*p) << PAGE_SHIFT) | (addr & ~PAGE_MASK);
 return __va(addr);
}
