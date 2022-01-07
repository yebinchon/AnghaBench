
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef int pte_t ;


 struct vm_area_struct TLB_FLUSH_VMA (struct mm_struct*,int ) ;
 int flush_tlb_range (struct vm_area_struct*,unsigned long,unsigned long) ;
 int pte_clear (struct mm_struct*,unsigned long,int *) ;

__attribute__((used)) static void clear_flush(struct mm_struct *mm,
        unsigned long addr,
        pte_t *ptep,
        unsigned long pgsize,
        unsigned long ncontig)
{
 struct vm_area_struct vma = TLB_FLUSH_VMA(mm, 0);
 unsigned long i, saddr = addr;

 for (i = 0; i < ncontig; i++, addr += pgsize, ptep++)
  pte_clear(mm, addr, ptep);

 flush_tlb_range(&vma, saddr, addr);
}
