
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_cpuid_entry2 {int dummy; } ;


 unsigned int KVM_GET_EMULATED_CPUID ;
 int __do_cpuid_func (struct kvm_cpuid_entry2*,int ,int*,int) ;
 int __do_cpuid_func_emulated (struct kvm_cpuid_entry2*,int ,int*,int) ;

__attribute__((used)) static int do_cpuid_func(struct kvm_cpuid_entry2 *entry, u32 func,
    int *nent, int maxnent, unsigned int type)
{
 if (type == KVM_GET_EMULATED_CPUID)
  return __do_cpuid_func_emulated(entry, func, nent, maxnent);

 return __do_cpuid_func(entry, func, nent, maxnent);
}
