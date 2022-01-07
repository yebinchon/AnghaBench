
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pte_t ;


 int __ptep_set_access_flags (struct vm_area_struct*,int *,int ,unsigned long,int ) ;
 int assert_pte_locked (int ,unsigned long) ;
 int mmu_virtual_psize ;
 int pte_same (int ,int ) ;
 int set_access_flags_filter (int ,struct vm_area_struct*,int) ;

int ptep_set_access_flags(struct vm_area_struct *vma, unsigned long address,
     pte_t *ptep, pte_t entry, int dirty)
{
 int changed;
 entry = set_access_flags_filter(entry, vma, dirty);
 changed = !pte_same(*(ptep), entry);
 if (changed) {
  assert_pte_locked(vma->vm_mm, address);
  __ptep_set_access_flags(vma, ptep, entry,
     address, mmu_virtual_psize);
 }
 return changed;
}
