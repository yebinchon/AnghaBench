
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int find_num_contig (struct mm_struct*,unsigned long,int *,size_t*) ;
 int get_clear_flush (struct mm_struct*,unsigned long,int *,size_t,int) ;
 int huge_ptep_get (int *) ;
 int pte_cont (int ) ;
 int ptep_get_and_clear (struct mm_struct*,unsigned long,int *) ;

pte_t huge_ptep_get_and_clear(struct mm_struct *mm,
         unsigned long addr, pte_t *ptep)
{
 int ncontig;
 size_t pgsize;
 pte_t orig_pte = huge_ptep_get(ptep);

 if (!pte_cont(orig_pte))
  return ptep_get_and_clear(mm, addr, ptep);

 ncontig = find_num_contig(mm, addr, ptep, &pgsize);

 return get_clear_flush(mm, addr, ptep, pgsize, ncontig);
}
