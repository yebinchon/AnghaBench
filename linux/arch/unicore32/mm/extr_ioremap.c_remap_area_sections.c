
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_type {int prot_sect; } ;
typedef int pud_t ;
typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PAGE_SHIFT ;
 scalar_t__ PGDIR_SIZE ;
 unsigned long SZ_4M ;
 int __pfn_to_phys (unsigned long) ;
 int __pmd (int) ;
 int flush_pmd_entry (int *) ;
 int * pgd_offset_k (unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 int set_pmd (int *,int ) ;
 int unmap_area_sections (unsigned long,size_t) ;

__attribute__((used)) static int
remap_area_sections(unsigned long virt, unsigned long pfn,
      size_t size, const struct mem_type *type)
{
 unsigned long addr = virt, end = virt + size;
 pgd_t *pgd;





 unmap_area_sections(virt, size);

 pgd = pgd_offset_k(addr);
 do {
  pmd_t *pmd = pmd_offset((pud_t *)pgd, addr);

  set_pmd(pmd, __pmd(__pfn_to_phys(pfn) | type->prot_sect));
  pfn += SZ_4M >> PAGE_SHIFT;
  flush_pmd_entry(pmd);

  addr += PGDIR_SIZE;
  pgd++;
 } while (addr < end);

 return 0;
}
