
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;
typedef int pgprot_t ;


 size_t PAGE_SHIFT ;
 int WARN_ON (int) ;
 int clear_flush (struct mm_struct*,unsigned long,int *,size_t,int) ;
 int find_num_contig (struct mm_struct*,unsigned long,int *,size_t*) ;
 int pfn_pte (unsigned long,int ) ;
 int pte_cont (int ) ;
 unsigned long pte_pfn (int ) ;
 int pte_pgprot (int ) ;
 int pte_present (int ) ;
 int set_pte_at (struct mm_struct*,unsigned long,int *,int ) ;

void set_huge_pte_at(struct mm_struct *mm, unsigned long addr,
       pte_t *ptep, pte_t pte)
{
 size_t pgsize;
 int i;
 int ncontig;
 unsigned long pfn, dpfn;
 pgprot_t hugeprot;





 WARN_ON(!pte_present(pte));

 if (!pte_cont(pte)) {
  set_pte_at(mm, addr, ptep, pte);
  return;
 }

 ncontig = find_num_contig(mm, addr, ptep, &pgsize);
 pfn = pte_pfn(pte);
 dpfn = pgsize >> PAGE_SHIFT;
 hugeprot = pte_pgprot(pte);

 clear_flush(mm, addr, ptep, pgsize, ncontig);

 for (i = 0; i < ncontig; i++, ptep++, addr += pgsize, pfn += dpfn)
  set_pte_at(mm, addr, ptep, pfn_pte(pfn, hugeprot));
}
