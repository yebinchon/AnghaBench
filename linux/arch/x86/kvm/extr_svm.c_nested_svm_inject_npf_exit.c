
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct x86_exception {int error_code; int address; } ;
struct vcpu_svm {TYPE_2__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {scalar_t__ exit_code; unsigned long long exit_info_1; int exit_info_2; scalar_t__ exit_code_hi; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 scalar_t__ SVM_EXIT_NPF ;
 int nested_svm_vmexit (struct vcpu_svm*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void nested_svm_inject_npf_exit(struct kvm_vcpu *vcpu,
           struct x86_exception *fault)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 if (svm->vmcb->control.exit_code != SVM_EXIT_NPF) {




  svm->vmcb->control.exit_code = SVM_EXIT_NPF;
  svm->vmcb->control.exit_code_hi = 0;
  svm->vmcb->control.exit_info_1 = (1ULL << 32);
  svm->vmcb->control.exit_info_2 = fault->address;
 }

 svm->vmcb->control.exit_info_1 &= ~0xffffffffULL;
 svm->vmcb->control.exit_info_1 |= fault->error_code;





 if (svm->vmcb->control.exit_info_1 & (2ULL << 32))
  svm->vmcb->control.exit_info_1 &= ~1;

 nested_svm_vmexit(svm);
}
