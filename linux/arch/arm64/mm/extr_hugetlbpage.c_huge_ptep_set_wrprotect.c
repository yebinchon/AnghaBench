
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgprot_t ;


 size_t PAGE_SHIFT ;
 int READ_ONCE (int ) ;
 int find_num_contig (struct mm_struct*,unsigned long,int *,size_t*) ;
 int get_clear_flush (struct mm_struct*,unsigned long,int *,size_t,int) ;
 int pfn_pte (unsigned long,int ) ;
 int pte_cont (int ) ;
 unsigned long pte_pfn (int ) ;
 int pte_pgprot (int ) ;
 int pte_wrprotect (int ) ;
 int ptep_set_wrprotect (struct mm_struct*,unsigned long,int *) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;

void huge_ptep_set_wrprotect(struct mm_struct *mm,
        unsigned long addr, pte_t *ptep)
{
 unsigned long pfn, dpfn;
 pgprot_t hugeprot;
 int ncontig, i;
 size_t pgsize;
 pte_t pte;

 if (!pte_cont(READ_ONCE(*ptep))) {
  ptep_set_wrprotect(mm, addr, ptep);
  return;
 }

 ncontig = find_num_contig(mm, addr, ptep, &pgsize);
 dpfn = pgsize >> PAGE_SHIFT;

 pte = get_clear_flush(mm, addr, ptep, pgsize, ncontig);
 pte = pte_wrprotect(pte);

 hugeprot = pte_pgprot(pte);
 pfn = pte_pfn(pte);

 for (i = 0; i < ncontig; i++, ptep++, addr += pgsize, pfn += dpfn)
  set_pte_at(mm, addr, ptep, pfn_pte(pfn, hugeprot));
}
