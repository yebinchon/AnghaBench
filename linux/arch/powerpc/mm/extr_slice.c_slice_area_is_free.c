
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct mm_struct {int context; } ;


 struct vm_area_struct* find_vma (struct mm_struct*,unsigned long) ;
 unsigned long mm_ctx_slb_addr_limit (int *) ;
 unsigned long vm_start_gap (struct vm_area_struct*) ;

__attribute__((used)) static int slice_area_is_free(struct mm_struct *mm, unsigned long addr,
         unsigned long len)
{
 struct vm_area_struct *vma;

 if ((mm_ctx_slb_addr_limit(&mm->context) - len) < addr)
  return 0;
 vma = find_vma(mm, addr);
 return (!vma || (addr + len) <= vm_start_gap(vma));
}
