
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {int kvm; TYPE_1__ arch; } ;
struct kvm_lapic {int vcpu; } ;
struct kvm_cpuid_entry2 {int ecx; } ;


 int APIC_LVR ;
 int APIC_LVR_DIRECTED_EOI ;
 int APIC_VERSION ;
 int X86_FEATURE_X2APIC ;
 int ioapic_in_kernel (int ) ;
 struct kvm_cpuid_entry2* kvm_find_cpuid_entry (int ,int,int ) ;
 int kvm_lapic_set_reg (struct kvm_lapic*,int ,int ) ;
 int lapic_in_kernel (struct kvm_vcpu*) ;

void kvm_apic_set_version(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;
 struct kvm_cpuid_entry2 *feat;
 u32 v = APIC_VERSION;

 if (!lapic_in_kernel(vcpu))
  return;
 feat = kvm_find_cpuid_entry(apic->vcpu, 0x1, 0);
 if (feat && (feat->ecx & (1 << (X86_FEATURE_X2APIC & 31))) &&
     !ioapic_in_kernel(vcpu->kvm))
  v |= APIC_LVR_DIRECTED_EOI;
 kvm_lapic_set_reg(apic, APIC_LVR, v);
}
