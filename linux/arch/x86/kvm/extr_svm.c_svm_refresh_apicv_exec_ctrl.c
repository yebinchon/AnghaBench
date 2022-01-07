
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int int_ctl; } ;
struct vmcb {TYPE_1__ control; } ;
struct vcpu_svm {struct vmcb* vmcb; } ;
struct kvm_vcpu {int dummy; } ;


 int AVIC_ENABLE_MASK ;
 int VMCB_AVIC ;
 scalar_t__ kvm_vcpu_apicv_active (struct kvm_vcpu*) ;
 int mark_dirty (struct vmcb*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_refresh_apicv_exec_ctrl(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 struct vmcb *vmcb = svm->vmcb;

 if (kvm_vcpu_apicv_active(vcpu))
  vmcb->control.int_ctl |= AVIC_ENABLE_MASK;
 else
  vmcb->control.int_ctl &= ~AVIC_ENABLE_MASK;
 mark_dirty(vmcb, VMCB_AVIC);
}
