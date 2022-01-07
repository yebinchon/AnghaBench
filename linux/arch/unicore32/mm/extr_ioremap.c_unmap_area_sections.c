
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 scalar_t__ PGDIR_SIZE ;
 int PMD_TYPE_MASK ;
 int PMD_TYPE_TABLE ;
 int SZ_4M ;
 int flush_cache_vunmap (unsigned long,unsigned long) ;
 int flush_tlb_kernel_range (unsigned long,unsigned long) ;
 int init_mm ;
 int * pgd_offset_k (unsigned long) ;
 int pmd_clear (int *) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_page_vaddr (int ) ;
 int pmd_val (int ) ;
 int pte_free_kernel (int *,int ) ;

__attribute__((used)) static void unmap_area_sections(unsigned long virt, unsigned long size)
{
 unsigned long addr = virt, end = virt + (size & ~(SZ_4M - 1));
 pgd_t *pgd;

 flush_cache_vunmap(addr, end);
 pgd = pgd_offset_k(addr);
 do {
  pmd_t pmd, *pmdp = pmd_offset((pud_t *)pgd, addr);

  pmd = *pmdp;
  if (!pmd_none(pmd)) {







   pmd_clear(pmdp);




   if ((pmd_val(pmd) & PMD_TYPE_MASK) == PMD_TYPE_TABLE)
    pte_free_kernel(&init_mm, pmd_page_vaddr(pmd));
  }

  addr += PGDIR_SIZE;
  pgd++;
 } while (addr < end);

 flush_tlb_kernel_range(virt, end);
}
