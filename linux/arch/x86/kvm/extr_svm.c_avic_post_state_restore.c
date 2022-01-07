
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 scalar_t__ avic_handle_apic_id_update (struct kvm_vcpu*) ;
 int avic_handle_dfr_update (struct kvm_vcpu*) ;
 int avic_handle_ldr_update (struct kvm_vcpu*) ;

__attribute__((used)) static inline void avic_post_state_restore(struct kvm_vcpu *vcpu)
{
 if (avic_handle_apic_id_update(vcpu) != 0)
  return;
 avic_handle_dfr_update(vcpu);
 avic_handle_ldr_update(vcpu);
}
