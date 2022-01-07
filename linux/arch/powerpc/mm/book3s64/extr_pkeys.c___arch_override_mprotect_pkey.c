
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;


 int PROT_EXEC ;
 int execute_only_pkey (int ) ;
 scalar_t__ vma_is_pkey_exec_only (struct vm_area_struct*) ;
 int vma_pkey (struct vm_area_struct*) ;

int __arch_override_mprotect_pkey(struct vm_area_struct *vma, int prot,
      int pkey)
{




 if (vma_is_pkey_exec_only(vma) && (prot != PROT_EXEC))
  return 0;





 if (prot == PROT_EXEC) {
  pkey = execute_only_pkey(vma->vm_mm);
  if (pkey > 0)
   return pkey;
 }


 return vma_pkey(vma);
}
