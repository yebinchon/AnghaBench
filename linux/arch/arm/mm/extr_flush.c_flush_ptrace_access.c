
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_flags; int vm_mm; } ;
struct page {int dummy; } ;


 unsigned int FLAG_PA_CORE_IN_MM ;
 unsigned int FLAG_PA_IS_EXEC ;
 int VM_EXEC ;
 int __flush_ptrace_access (struct page*,unsigned long,void*,unsigned long,unsigned int) ;
 scalar_t__ cpumask_test_cpu (int ,int ) ;
 int mm_cpumask (int ) ;
 int smp_processor_id () ;

__attribute__((used)) static
void flush_ptrace_access(struct vm_area_struct *vma, struct page *page,
    unsigned long uaddr, void *kaddr, unsigned long len)
{
 unsigned int flags = 0;
 if (cpumask_test_cpu(smp_processor_id(), mm_cpumask(vma->vm_mm)))
  flags |= FLAG_PA_CORE_IN_MM;
 if (vma->vm_flags & VM_EXEC)
  flags |= FLAG_PA_IS_EXEC;
 __flush_ptrace_access(page, uaddr, kaddr, len, flags);
}
