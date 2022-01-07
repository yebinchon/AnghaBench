
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dr6; } ;
struct kvm_vcpu {int guest_debug; TYPE_1__ arch; } ;
struct TYPE_4__ {int (* set_dr6 ) (struct kvm_vcpu*,int ) ;} ;


 int KVM_GUESTDBG_USE_HW_BP ;
 TYPE_2__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*,int ) ;

__attribute__((used)) static void kvm_update_dr6(struct kvm_vcpu *vcpu)
{
 if (!(vcpu->guest_debug & KVM_GUESTDBG_USE_HW_BP))
  kvm_x86_ops->set_dr6(vcpu, vcpu->arch.dr6);
}
