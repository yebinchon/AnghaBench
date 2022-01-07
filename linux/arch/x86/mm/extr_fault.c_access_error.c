
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_EXEC ;
 int VM_READ ;
 int VM_WRITE ;
 unsigned long X86_PF_INSTR ;
 unsigned long X86_PF_PK ;
 unsigned long X86_PF_PROT ;
 unsigned long X86_PF_WRITE ;
 int arch_vma_access_permitted (struct vm_area_struct*,unsigned long,unsigned long,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int
access_error(unsigned long error_code, struct vm_area_struct *vma)
{

 bool foreign = 0;






 if (error_code & X86_PF_PK)
  return 1;






 if (!arch_vma_access_permitted(vma, (error_code & X86_PF_WRITE),
           (error_code & X86_PF_INSTR), foreign))
  return 1;

 if (error_code & X86_PF_WRITE) {

  if (unlikely(!(vma->vm_flags & VM_WRITE)))
   return 1;
  return 0;
 }


 if (unlikely(error_code & X86_PF_PROT))
  return 1;


 if (unlikely(!(vma->vm_flags & (VM_READ | VM_EXEC | VM_WRITE))))
  return 1;

 return 0;
}
