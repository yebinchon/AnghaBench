
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmcb_control_area {scalar_t__ event_inj; int event_inj_err; int exit_int_info_err; scalar_t__ exit_int_info; } ;
struct vcpu_svm {TYPE_1__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {struct vmcb_control_area control; } ;


 int svm_complete_interrupts (struct vcpu_svm*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_cancel_injection(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 struct vmcb_control_area *control = &svm->vmcb->control;

 control->exit_int_info = control->event_inj;
 control->exit_int_info_err = control->event_inj_err;
 control->event_inj = 0;
 svm_complete_interrupts(svm);
}
