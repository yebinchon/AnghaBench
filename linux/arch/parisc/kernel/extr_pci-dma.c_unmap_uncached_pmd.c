
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;
typedef int pgd_t ;


 unsigned long PGDIR_MASK ;
 unsigned long PGDIR_SIZE ;
 unsigned long PMD_MASK ;
 unsigned long PMD_SIZE ;
 int pgd_ERROR (int ) ;
 scalar_t__ pgd_bad (int ) ;
 int pgd_clear (int *) ;
 scalar_t__ pgd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int unmap_uncached_pte (int *,unsigned long,unsigned long) ;

__attribute__((used)) static inline void unmap_uncached_pmd(pgd_t * dir, unsigned long vaddr,
  unsigned long size)
{
 pmd_t * pmd;
 unsigned long end;
 unsigned long orig_vaddr = vaddr;

 if (pgd_none(*dir))
  return;
 if (pgd_bad(*dir)) {
  pgd_ERROR(*dir);
  pgd_clear(dir);
  return;
 }
 pmd = pmd_offset(dir, vaddr);
 vaddr &= ~PGDIR_MASK;
 end = vaddr + size;
 if (end > PGDIR_SIZE)
  end = PGDIR_SIZE;
 do {
  unmap_uncached_pte(pmd, orig_vaddr, end - vaddr);
  vaddr = (vaddr + PMD_SIZE) & PMD_MASK;
  orig_vaddr += PMD_SIZE;
  pmd++;
 } while (vaddr < end);
}
