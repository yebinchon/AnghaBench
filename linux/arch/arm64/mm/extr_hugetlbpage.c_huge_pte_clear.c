
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
typedef int pte_t ;


 int num_contig_ptes (unsigned long,size_t*) ;
 int pte_clear (struct mm_struct*,unsigned long,int *) ;

void huge_pte_clear(struct mm_struct *mm, unsigned long addr,
      pte_t *ptep, unsigned long sz)
{
 int i, ncontig;
 size_t pgsize;

 ncontig = num_contig_ptes(sz, &pgsize);

 for (i = 0; i < ncontig; i++, addr += pgsize, ptep++)
  pte_clear(mm, addr, ptep);
}
