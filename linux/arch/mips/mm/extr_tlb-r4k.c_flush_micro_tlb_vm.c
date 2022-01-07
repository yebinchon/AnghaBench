
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int VM_EXEC ;
 int flush_micro_tlb () ;

__attribute__((used)) static inline void flush_micro_tlb_vm(struct vm_area_struct *vma)
{
 if (vma->vm_flags & VM_EXEC)
  flush_micro_tlb();
}
