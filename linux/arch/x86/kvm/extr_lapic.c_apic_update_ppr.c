
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_lapic {int vcpu; } ;


 int KVM_REQ_EVENT ;
 scalar_t__ __apic_update_ppr (struct kvm_lapic*,int *) ;
 int apic_has_interrupt_for_ppr (struct kvm_lapic*,int ) ;
 int kvm_make_request (int ,int ) ;

__attribute__((used)) static void apic_update_ppr(struct kvm_lapic *apic)
{
 u32 ppr;

 if (__apic_update_ppr(apic, &ppr) &&
     apic_has_interrupt_for_ppr(apic, ppr) != -1)
  kvm_make_request(KVM_REQ_EVENT, apic->vcpu);
}
