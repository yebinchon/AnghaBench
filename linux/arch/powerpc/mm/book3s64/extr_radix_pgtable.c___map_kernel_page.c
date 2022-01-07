
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 unsigned long MAX_EA_BITS_PER_CONTEXT ;
 unsigned long PAGE_SHIFT ;
 unsigned int PMD_SIZE ;
 unsigned int PUD_SIZE ;
 unsigned long RADIX_KERN_MAP_SIZE ;
 scalar_t__ RADIX_PGTABLE_RANGE ;
 scalar_t__ TASK_SIZE_USER64 ;
 int early_map_kernel_page (unsigned long,unsigned long,int ,unsigned int,int,unsigned long,unsigned long) ;
 int init_mm ;
 int pfn_pte (unsigned long,int ) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_alloc (int *,int *,unsigned long) ;
 int * pmdp_ptep (int *) ;
 int * pte_alloc_kernel (int *,unsigned long) ;
 int * pud_alloc (int *,int *,unsigned long) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;
 int slab_is_available () ;
 int smp_wmb () ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int __map_kernel_page(unsigned long ea, unsigned long pa,
     pgprot_t flags,
     unsigned int map_page_size,
     int nid,
     unsigned long region_start, unsigned long region_end)
{
 unsigned long pfn = pa >> PAGE_SHIFT;
 pgd_t *pgdp;
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t *ptep;



 BUILD_BUG_ON(TASK_SIZE_USER64 > RADIX_PGTABLE_RANGE);





 if (unlikely(!slab_is_available()))
  return early_map_kernel_page(ea, pa, flags, map_page_size,
      nid, region_start, region_end);






 pgdp = pgd_offset_k(ea);
 pudp = pud_alloc(&init_mm, pgdp, ea);
 if (!pudp)
  return -ENOMEM;
 if (map_page_size == PUD_SIZE) {
  ptep = (pte_t *)pudp;
  goto set_the_pte;
 }
 pmdp = pmd_alloc(&init_mm, pudp, ea);
 if (!pmdp)
  return -ENOMEM;
 if (map_page_size == PMD_SIZE) {
  ptep = pmdp_ptep(pmdp);
  goto set_the_pte;
 }
 ptep = pte_alloc_kernel(pmdp, ea);
 if (!ptep)
  return -ENOMEM;

set_the_pte:
 set_pte_at(&init_mm, ea, ptep, pfn_pte(pfn, flags));
 smp_wmb();
 return 0;
}
