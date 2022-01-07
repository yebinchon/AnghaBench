
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int emulate_on_interception (struct vcpu_svm*) ;
 int kvm_complete_insn_gp (int *,int) ;
 int kvm_rdpmc (int *) ;
 int nrips ;

__attribute__((used)) static int rdpmc_interception(struct vcpu_svm *svm)
{
 int err;

 if (!nrips)
  return emulate_on_interception(svm);

 err = kvm_rdpmc(&svm->vcpu);
 return kvm_complete_insn_gp(&svm->vcpu, err);
}
