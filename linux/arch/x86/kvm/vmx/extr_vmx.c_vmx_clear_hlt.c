
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 int GUEST_ACTIVITY_ACTIVE ;
 scalar_t__ GUEST_ACTIVITY_HLT ;
 int GUEST_ACTIVITY_STATE ;
 scalar_t__ kvm_hlt_in_guest (int ) ;
 scalar_t__ vmcs_read32 (int ) ;
 int vmcs_write32 (int ,int ) ;

__attribute__((used)) static void vmx_clear_hlt(struct kvm_vcpu *vcpu)
{






 if (kvm_hlt_in_guest(vcpu->kvm) &&
   vmcs_read32(GUEST_ACTIVITY_STATE) == GUEST_ACTIVITY_HLT)
  vmcs_write32(GUEST_ACTIVITY_STATE, GUEST_ACTIVITY_ACTIVE);
}
