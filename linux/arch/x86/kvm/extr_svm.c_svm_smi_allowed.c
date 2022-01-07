
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long long intercept; int exit_required; } ;
struct vcpu_svm {TYPE_3__ nested; TYPE_2__* vmcb; int vcpu; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {int exit_code; } ;
struct TYPE_5__ {TYPE_1__ control; } ;


 unsigned long long INTERCEPT_SMI ;
 int SVM_EXIT_SMI ;
 int gif_set (struct vcpu_svm*) ;
 scalar_t__ is_guest_mode (int *) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_smi_allowed(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);


 if (!gif_set(svm))
  return 0;

 if (is_guest_mode(&svm->vcpu) &&
     svm->nested.intercept & (1ULL << INTERCEPT_SMI)) {

  svm->vmcb->control.exit_code = SVM_EXIT_SMI;
  svm->nested.exit_required = 1;
  return 0;
 }

 return 1;
}
