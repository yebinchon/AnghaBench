
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int kvm_no_apic_vcpu ;
 scalar_t__ static_key_false (int *) ;

__attribute__((used)) static inline bool lapic_in_kernel(struct kvm_vcpu *vcpu)
{
 if (static_key_false(&kvm_no_apic_vcpu))
  return vcpu->arch.apic;
 return 1;
}
