
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; } ;


 int CPU_FTR_NOEXECUTE ;
 int VM_EXEC ;
 int VM_READ ;
 int VM_WRITE ;
 scalar_t__ cpu_has_feature (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool access_error(bool is_write, bool is_exec,
    struct vm_area_struct *vma)
{
 if (is_exec) {
  return !(vma->vm_flags & VM_EXEC) &&
   (cpu_has_feature(CPU_FTR_NOEXECUTE) ||
    !(vma->vm_flags & (VM_READ | VM_WRITE)));
 }

 if (is_write) {
  if (unlikely(!(vma->vm_flags & VM_WRITE)))
   return 1;
  return 0;
 }

 if (unlikely(!(vma->vm_flags & (VM_READ | VM_EXEC | VM_WRITE))))
  return 1;






 return 0;
}
