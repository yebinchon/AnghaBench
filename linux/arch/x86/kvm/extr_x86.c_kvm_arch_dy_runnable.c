
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pv_unhalted; } ;
struct TYPE_5__ {scalar_t__ apicv_active; TYPE_1__ pv; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_6__ {scalar_t__ (* dy_apicv_has_pending_interrupt ) (struct kvm_vcpu*) ;} ;


 int KVM_REQ_EVENT ;
 int KVM_REQ_NMI ;
 int KVM_REQ_SMI ;
 scalar_t__ READ_ONCE (int ) ;
 scalar_t__ kvm_test_request (int ,struct kvm_vcpu*) ;
 TYPE_3__* kvm_x86_ops ;
 scalar_t__ stub1 (struct kvm_vcpu*) ;

bool kvm_arch_dy_runnable(struct kvm_vcpu *vcpu)
{
 if (READ_ONCE(vcpu->arch.pv.pv_unhalted))
  return 1;

 if (kvm_test_request(KVM_REQ_NMI, vcpu) ||
  kvm_test_request(KVM_REQ_SMI, vcpu) ||
   kvm_test_request(KVM_REQ_EVENT, vcpu))
  return 1;

 if (vcpu->arch.apicv_active && kvm_x86_ops->dy_apicv_has_pending_interrupt(vcpu))
  return 1;

 return 0;
}
