
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_lapic {TYPE_2__* vcpu; } ;
struct TYPE_6__ {int key; } ;
struct TYPE_4__ {int apic_base; } ;
struct TYPE_5__ {TYPE_1__ arch; } ;


 int MSR_IA32_APICBASE_ENABLE ;
 TYPE_3__ apic_hw_disabled ;
 scalar_t__ static_key_false (int *) ;

__attribute__((used)) static inline int kvm_apic_hw_enabled(struct kvm_lapic *apic)
{
 if (static_key_false(&apic_hw_disabled.key))
  return apic->vcpu->arch.apic_base & MSR_IA32_APICBASE_ENABLE;
 return MSR_IA32_APICBASE_ENABLE;
}
