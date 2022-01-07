
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ kvm_apic_hw_enabled (int ) ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool kvm_apic_present(struct kvm_vcpu *vcpu)
{
 return lapic_in_kernel(vcpu) && kvm_apic_hw_enabled(vcpu->arch.apic);
}
