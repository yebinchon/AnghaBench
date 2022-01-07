
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int pkey_access_permitted (int ,int,int) ;
 int pkey_disabled ;
 scalar_t__ static_branch_likely (int *) ;
 scalar_t__ vma_is_foreign (struct vm_area_struct*) ;
 int vma_pkey (struct vm_area_struct*) ;

bool arch_vma_access_permitted(struct vm_area_struct *vma, bool write,
          bool execute, bool foreign)
{
 if (static_branch_likely(&pkey_disabled))
  return 1;



 if (foreign || vma_is_foreign(vma))
  return 1;

 return pkey_access_permitted(vma_pkey(vma), write, execute);
}
