
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {unsigned int vm_flags; } ;


 unsigned int FSR_LNX_PF ;
 unsigned int VM_EXEC ;
 unsigned int VM_READ ;
 unsigned int VM_WRITE ;

__attribute__((used)) static inline bool access_error(unsigned int fsr, struct vm_area_struct *vma)
{
 unsigned int mask = VM_READ | VM_WRITE | VM_EXEC;

 if (!(fsr ^ 0x12))
  mask = VM_WRITE;
 if (fsr & FSR_LNX_PF)
  mask = VM_EXEC;

 return vma->vm_flags & mask ? 0 : 1;
}
