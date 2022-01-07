
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvm_vcpu {int dummy; } ;
struct vcpu_svm {TYPE_2__* vmcb; struct kvm_vcpu vcpu; } ;
struct TYPE_3__ {scalar_t__ exit_info_1; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int EMULTYPE_VMWARE_GP ;
 int GP_VECTOR ;
 int WARN_ON_ONCE (int) ;
 int enable_vmware_backdoor ;
 int kvm_emulate_instruction (struct kvm_vcpu*,int ) ;
 int kvm_queue_exception_e (struct kvm_vcpu*,int ,scalar_t__) ;

__attribute__((used)) static int gp_interception(struct vcpu_svm *svm)
{
 struct kvm_vcpu *vcpu = &svm->vcpu;
 u32 error_code = svm->vmcb->control.exit_info_1;

 WARN_ON_ONCE(!enable_vmware_backdoor);





 if (error_code) {
  kvm_queue_exception_e(vcpu, GP_VECTOR, error_code);
  return 1;
 }
 return kvm_emulate_instruction(vcpu, EMULTYPE_VMWARE_GP);
}
