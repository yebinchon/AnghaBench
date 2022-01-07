
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct kvm_lapic* apic; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct kvm_lapic {int vcpu; } ;


 int KVM_REQ_EVENT ;
 int kvm_ioapic_send_eoi (struct kvm_lapic*,int) ;
 int kvm_make_request (int ,int ) ;
 int trace_kvm_eoi (struct kvm_lapic*,int) ;

void kvm_apic_set_eoi_accelerated(struct kvm_vcpu *vcpu, int vector)
{
 struct kvm_lapic *apic = vcpu->arch.apic;

 trace_kvm_eoi(apic, vector);

 kvm_ioapic_send_eoi(apic, vector);
 kvm_make_request(KVM_REQ_EVENT, apic->vcpu);
}
