
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {scalar_t__ (* guest_apic_has_interrupt ) (struct kvm_vcpu*) ;} ;


 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 TYPE_1__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static inline bool kvm_guest_apic_has_interrupt(struct kvm_vcpu *vcpu)
{
 return (is_guest_mode(vcpu) &&
   kvm_x86_ops->guest_apic_has_interrupt &&
   kvm_x86_ops->guest_apic_has_interrupt(vcpu));
}
