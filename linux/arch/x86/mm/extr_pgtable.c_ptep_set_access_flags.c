
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pte_t ;


 int pte_same (int ,int ) ;
 int set_pte (int *,int ) ;

int ptep_set_access_flags(struct vm_area_struct *vma,
     unsigned long address, pte_t *ptep,
     pte_t entry, int dirty)
{
 int changed = !pte_same(*ptep, entry);

 if (changed && dirty)
  set_pte(ptep, entry);

 return changed;
}
