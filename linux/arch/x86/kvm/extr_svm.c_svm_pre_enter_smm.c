
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int vmcb; } ;
struct vcpu_svm {TYPE_3__* vmcb; TYPE_1__ nested; } ;
struct TYPE_8__ {int * regs; } ;
struct kvm_vcpu {TYPE_4__ arch; } ;
struct TYPE_6__ {int rip; int rsp; int rax; } ;
struct TYPE_7__ {TYPE_2__ save; } ;


 size_t VCPU_REGS_RAX ;
 size_t VCPU_REGS_RIP ;
 size_t VCPU_REGS_RSP ;
 scalar_t__ is_guest_mode (struct kvm_vcpu*) ;
 int nested_svm_vmexit (struct vcpu_svm*) ;
 int put_smstate (int ,char*,int,int) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;
 int u64 ;

__attribute__((used)) static int svm_pre_enter_smm(struct kvm_vcpu *vcpu, char *smstate)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 int ret;

 if (is_guest_mode(vcpu)) {

  put_smstate(u64, smstate, 0x7ed8, 1);

  put_smstate(u64, smstate, 0x7ee0, svm->nested.vmcb);

  svm->vmcb->save.rax = vcpu->arch.regs[VCPU_REGS_RAX];
  svm->vmcb->save.rsp = vcpu->arch.regs[VCPU_REGS_RSP];
  svm->vmcb->save.rip = vcpu->arch.regs[VCPU_REGS_RIP];

  ret = nested_svm_vmexit(svm);
  if (ret)
   return ret;
 }
 return 0;
}
