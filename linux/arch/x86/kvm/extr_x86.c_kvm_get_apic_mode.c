
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
typedef enum lapic_mode { ____Placeholder_lapic_mode } lapic_mode ;


 int kvm_apic_mode (int ) ;
 int kvm_get_apic_base (struct kvm_vcpu*) ;

enum lapic_mode kvm_get_apic_mode(struct kvm_vcpu *vcpu)
{
 return kvm_apic_mode(kvm_get_apic_base(vcpu));
}
