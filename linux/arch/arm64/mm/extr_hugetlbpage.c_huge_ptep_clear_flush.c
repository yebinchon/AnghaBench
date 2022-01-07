
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;


 int READ_ONCE (int ) ;
 int clear_flush (int ,unsigned long,int *,size_t,int) ;
 int find_num_contig (int ,unsigned long,int *,size_t*) ;
 int pte_cont (int ) ;
 int ptep_clear_flush (struct vm_area_struct*,unsigned long,int *) ;

void huge_ptep_clear_flush(struct vm_area_struct *vma,
      unsigned long addr, pte_t *ptep)
{
 size_t pgsize;
 int ncontig;

 if (!pte_cont(READ_ONCE(*ptep))) {
  ptep_clear_flush(vma, addr, ptep);
  return;
 }

 ncontig = find_num_contig(vma->vm_mm, addr, ptep, &pgsize);
 clear_flush(vma->vm_mm, addr, ptep, pgsize, ncontig);
}
