
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_7__ {int apic_base; struct kvm_lapic* apic; } ;
struct kvm_vcpu {int vcpu_id; int kvm; TYPE_1__ arch; } ;
struct kvm_lapic {int base_address; TYPE_3__* vcpu; } ;
struct TYPE_11__ {int (* set_virtual_apic_mode ) (struct kvm_vcpu*) ;} ;
struct TYPE_10__ {int key; } ;
struct TYPE_8__ {int apic_base; } ;
struct TYPE_9__ {TYPE_2__ arch; } ;


 int APIC_DEFAULT_PHYS_BASE ;
 int MSR_IA32_APICBASE_BASE ;
 int MSR_IA32_APICBASE_BSP ;
 int MSR_IA32_APICBASE_ENABLE ;
 int X2APIC_ENABLE ;
 TYPE_4__ apic_hw_disabled ;
 int kvm_apic_set_x2apic_id (struct kvm_lapic*,int ) ;
 int kvm_apic_set_xapic_id (struct kvm_lapic*,int ) ;
 int kvm_update_cpuid (struct kvm_vcpu*) ;
 TYPE_5__* kvm_x86_ops ;
 int pr_warn_once (char*) ;
 int recalculate_apic_map (int ) ;
 int static_key_slow_dec_deferred (TYPE_4__*) ;
 int static_key_slow_inc (int *) ;
 int stub1 (struct kvm_vcpu*) ;

void kvm_lapic_set_base(struct kvm_vcpu *vcpu, u64 value)
{
 u64 old_value = vcpu->arch.apic_base;
 struct kvm_lapic *apic = vcpu->arch.apic;

 if (!apic)
  value |= MSR_IA32_APICBASE_BSP;

 vcpu->arch.apic_base = value;

 if ((old_value ^ value) & MSR_IA32_APICBASE_ENABLE)
  kvm_update_cpuid(vcpu);

 if (!apic)
  return;


 if ((old_value ^ value) & MSR_IA32_APICBASE_ENABLE) {
  if (value & MSR_IA32_APICBASE_ENABLE) {
   kvm_apic_set_xapic_id(apic, vcpu->vcpu_id);
   static_key_slow_dec_deferred(&apic_hw_disabled);
  } else {
   static_key_slow_inc(&apic_hw_disabled.key);
   recalculate_apic_map(vcpu->kvm);
  }
 }

 if (((old_value ^ value) & X2APIC_ENABLE) && (value & X2APIC_ENABLE))
  kvm_apic_set_x2apic_id(apic, vcpu->vcpu_id);

 if ((old_value ^ value) & (MSR_IA32_APICBASE_ENABLE | X2APIC_ENABLE))
  kvm_x86_ops->set_virtual_apic_mode(vcpu);

 apic->base_address = apic->vcpu->arch.apic_base &
        MSR_IA32_APICBASE_BASE;

 if ((value & MSR_IA32_APICBASE_ENABLE) &&
      apic->base_address != APIC_DEFAULT_PHYS_BASE)
  pr_warn_once("APIC base relocation is unsupported by KVM");
}
