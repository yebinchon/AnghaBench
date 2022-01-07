
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;
typedef int pmd_t ;
typedef int phys_addr_t ;


 int ENOMEM ;
 int PAGE_SHIFT ;
 int __pgprot (int) ;
 int _tlbie (unsigned long) ;
 int init_mm ;
 int mem_init_done ;
 int pfn_pte (int,int ) ;
 int pgd_offset_k (unsigned long) ;
 int * pmd_offset (int ,unsigned long) ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;
 scalar_t__ unlikely (int ) ;

int map_page(unsigned long va, phys_addr_t pa, int flags)
{
 pmd_t *pd;
 pte_t *pg;
 int err = -ENOMEM;

 pd = pmd_offset(pgd_offset_k(va), va);

 pg = pte_alloc_kernel(pd, va);


 if (pg != ((void*)0)) {
  err = 0;
  set_pte_at(&init_mm, va, pg, pfn_pte(pa >> PAGE_SHIFT,
    __pgprot(flags)));
  if (unlikely(mem_init_done))
   _tlbie(va);
 }
 return err;
}
