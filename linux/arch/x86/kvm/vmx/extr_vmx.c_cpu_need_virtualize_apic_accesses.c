
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ flexpriority_enabled ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool cpu_need_virtualize_apic_accesses(struct kvm_vcpu *vcpu)
{
 return flexpriority_enabled && lapic_in_kernel(vcpu);
}
