
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* apic; int apic_attention; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
typedef scalar_t__ gpa_t ;
struct TYPE_3__ {scalar_t__ vapic_addr; int vapic_cache; } ;


 int EINVAL ;
 int KVM_APIC_CHECK_VAPIC ;
 int __clear_bit (int ,int *) ;
 int __set_bit (int ,int *) ;
 scalar_t__ kvm_gfn_to_hva_cache_init (int ,int *,scalar_t__,int) ;

int kvm_lapic_set_vapic_addr(struct kvm_vcpu *vcpu, gpa_t vapic_addr)
{
 if (vapic_addr) {
  if (kvm_gfn_to_hva_cache_init(vcpu->kvm,
     &vcpu->arch.apic->vapic_cache,
     vapic_addr, sizeof(u32)))
   return -EINVAL;
  __set_bit(KVM_APIC_CHECK_VAPIC, &vcpu->arch.apic_attention);
 } else {
  __clear_bit(KVM_APIC_CHECK_VAPIC, &vcpu->arch.apic_attention);
 }

 vcpu->arch.apic->vapic_addr = vapic_addr;
 return 0;
}
