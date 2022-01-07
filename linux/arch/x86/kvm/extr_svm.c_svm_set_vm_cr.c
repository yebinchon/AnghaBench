
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int vm_cr_msr; } ;
struct vcpu_svm {TYPE_2__ nested; } ;
struct TYPE_3__ {int efer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EFER_SVME ;
 int SVM_VM_CR_SVM_DIS_MASK ;
 int SVM_VM_CR_SVM_LOCK_MASK ;
 int SVM_VM_CR_VALID_MASK ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_set_vm_cr(struct kvm_vcpu *vcpu, u64 data)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 int svm_dis, chg_mask;

 if (data & ~SVM_VM_CR_VALID_MASK)
  return 1;

 chg_mask = SVM_VM_CR_VALID_MASK;

 if (svm->nested.vm_cr_msr & SVM_VM_CR_SVM_DIS_MASK)
  chg_mask &= ~(SVM_VM_CR_SVM_LOCK_MASK | SVM_VM_CR_SVM_DIS_MASK);

 svm->nested.vm_cr_msr &= ~chg_mask;
 svm->nested.vm_cr_msr |= (data & chg_mask);

 svm_dis = svm->nested.vm_cr_msr & SVM_VM_CR_SVM_DIS_MASK;


 if (svm_dis && (vcpu->arch.efer & EFER_SVME))
  return 1;

 return 0;
}
