
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_walk {int mm; } ;
typedef int spinlock_t ;
typedef int pte_t ;
typedef int pmd_t ;


 scalar_t__ PAGE_SIZE ;
 int _PAGE_INVALID ;
 int __pte (int ) ;
 scalar_t__ is_zero_pfn (int ) ;
 int * pte_offset_map_lock (int ,int *,unsigned long,int **) ;
 int pte_pfn (int ) ;
 int pte_unmap_unlock (int *,int *) ;
 int ptep_xchg_direct (int ,unsigned long,int *,int ) ;

__attribute__((used)) static int __zap_zero_pages(pmd_t *pmd, unsigned long start,
      unsigned long end, struct mm_walk *walk)
{
 unsigned long addr;

 for (addr = start; addr != end; addr += PAGE_SIZE) {
  pte_t *ptep;
  spinlock_t *ptl;

  ptep = pte_offset_map_lock(walk->mm, pmd, addr, &ptl);
  if (is_zero_pfn(pte_pfn(*ptep)))
   ptep_xchg_direct(walk->mm, addr, ptep, __pte(_PAGE_INVALID));
  pte_unmap_unlock(ptep, ptl);
 }
 return 0;
}
