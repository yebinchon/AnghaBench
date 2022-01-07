
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;


 int X86_FEATURE_OSPKE ;
 unsigned long X86_PF_INSTR ;
 unsigned long X86_PF_PK ;
 unsigned long X86_PF_WRITE ;
 int arch_vma_access_permitted (struct vm_area_struct*,unsigned long,unsigned long,int) ;
 int boot_cpu_has (int ) ;

__attribute__((used)) static inline bool bad_area_access_from_pkeys(unsigned long error_code,
  struct vm_area_struct *vma)
{

 bool foreign = 0;

 if (!boot_cpu_has(X86_FEATURE_OSPKE))
  return 0;
 if (error_code & X86_PF_PK)
  return 1;

 if (!arch_vma_access_permitted(vma, (error_code & X86_PF_WRITE),
           (error_code & X86_PF_INSTR), foreign))
  return 1;
 return 0;
}
