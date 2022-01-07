
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 scalar_t__ kvm_apic_present (struct kvm_vcpu*) ;
 scalar_t__ kvm_apic_sw_enabled (int ) ;

__attribute__((used)) static inline int kvm_lapic_enabled(struct kvm_vcpu *vcpu)
{
 return kvm_apic_present(vcpu) && kvm_apic_sw_enabled(vcpu->arch.apic);
}
