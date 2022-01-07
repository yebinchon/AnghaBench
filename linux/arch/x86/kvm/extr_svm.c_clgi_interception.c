
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vcpu_svm {TYPE_2__* vmcb; int vcpu; } ;
struct TYPE_3__ {int int_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int VMCB_INTR ;
 int V_IRQ_MASK ;
 int disable_gif (struct vcpu_svm*) ;
 int kvm_skip_emulated_instruction (int *) ;
 int kvm_vcpu_apicv_active (int *) ;
 int mark_dirty (TYPE_2__*,int ) ;
 scalar_t__ nested_svm_check_permissions (struct vcpu_svm*) ;
 int svm_clear_vintr (struct vcpu_svm*) ;

__attribute__((used)) static int clgi_interception(struct vcpu_svm *svm)
{
 int ret;

 if (nested_svm_check_permissions(svm))
  return 1;

 ret = kvm_skip_emulated_instruction(&svm->vcpu);

 disable_gif(svm);


 if (!kvm_vcpu_apicv_active(&svm->vcpu)) {
  svm_clear_vintr(svm);
  svm->vmcb->control.int_ctl &= ~V_IRQ_MASK;
  mark_dirty(svm->vmcb, VMCB_INTR);
 }

 return ret;
}
