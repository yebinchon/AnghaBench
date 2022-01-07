
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
struct kvm_cpuid_entry2 {int eax; } ;


 struct kvm_cpuid_entry2* kvm_find_cpuid_entry (struct kvm_vcpu*,int,int ) ;

__attribute__((used)) static bool cpuid_function_in_range(struct kvm_vcpu *vcpu, u32 function)
{
 struct kvm_cpuid_entry2 *max;

 max = kvm_find_cpuid_entry(vcpu, function & 0x80000000, 0);
 return max && function <= max->eax;
}
