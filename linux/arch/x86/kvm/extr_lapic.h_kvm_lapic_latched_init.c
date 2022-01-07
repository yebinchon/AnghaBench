
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* apic; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int pending_events; } ;


 int KVM_APIC_INIT ;
 scalar_t__ lapic_in_kernel (struct kvm_vcpu*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline int kvm_lapic_latched_init(struct kvm_vcpu *vcpu)
{
 return lapic_in_kernel(vcpu) && test_bit(KVM_APIC_INIT, &vcpu->arch.apic->pending_events);
}
