
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgprot_t ;
typedef int pgd_t ;


 unsigned long PAGE_SHIFT ;
 int PAGE_SIZE ;
 unsigned int PMD_SIZE ;
 int PMD_TABLE_SIZE ;
 unsigned int PUD_SIZE ;
 int PUD_TABLE_SIZE ;
 void* early_alloc_pgtable (int ,int,unsigned long,unsigned long) ;
 int init_mm ;
 int pfn_pte (unsigned long,int ) ;
 scalar_t__ pgd_none (int ) ;
 int * pgd_offset_k (unsigned long) ;
 int pgd_populate (int *,int *,int *) ;
 int * pmd_offset (int *,unsigned long) ;
 int pmd_populate_kernel (int *,int *,int *) ;
 int pmd_present (int ) ;
 int * pmdp_ptep (int *) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 scalar_t__ pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 int pud_populate (int *,int *,int *) ;
 int set_pte_at (int *,unsigned long,int *,int ) ;
 int smp_wmb () ;

__attribute__((used)) static int early_map_kernel_page(unsigned long ea, unsigned long pa,
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

 pgdp = pgd_offset_k(ea);
 if (pgd_none(*pgdp)) {
  pudp = early_alloc_pgtable(PUD_TABLE_SIZE, nid,
      region_start, region_end);
  pgd_populate(&init_mm, pgdp, pudp);
 }
 pudp = pud_offset(pgdp, ea);
 if (map_page_size == PUD_SIZE) {
  ptep = (pte_t *)pudp;
  goto set_the_pte;
 }
 if (pud_none(*pudp)) {
  pmdp = early_alloc_pgtable(PMD_TABLE_SIZE, nid,
      region_start, region_end);
  pud_populate(&init_mm, pudp, pmdp);
 }
 pmdp = pmd_offset(pudp, ea);
 if (map_page_size == PMD_SIZE) {
  ptep = pmdp_ptep(pmdp);
  goto set_the_pte;
 }
 if (!pmd_present(*pmdp)) {
  ptep = early_alloc_pgtable(PAGE_SIZE, nid,
      region_start, region_end);
  pmd_populate_kernel(&init_mm, pmdp, ptep);
 }
 ptep = pte_offset_kernel(pmdp, ea);

set_the_pte:
 set_pte_at(&init_mm, ea, ptep, pfn_pte(pfn, flags));
 smp_wmb();
 return 0;
}
