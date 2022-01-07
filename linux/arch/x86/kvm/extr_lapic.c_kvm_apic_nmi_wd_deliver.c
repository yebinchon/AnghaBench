
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int dummy; } ;


 int APIC_LVT0 ;
 int kvm_apic_local_deliver (struct kvm_lapic*,int ) ;

void kvm_apic_nmi_wd_deliver(struct kvm_vcpu *vcpu)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 if (apic)
  kvm_apic_local_deliver(apic, APIC_LVT0);
}
