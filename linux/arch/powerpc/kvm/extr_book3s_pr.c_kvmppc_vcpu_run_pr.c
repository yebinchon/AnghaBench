
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vrsave ;
struct TYPE_2__ {int sane; } ;
struct kvm_vcpu {int mode; TYPE_1__ arch; } ;
struct kvm_run {int exit_reason; } ;


 int BOOK3S_INTERRUPT_FP_UNAVAIL ;
 int EINVAL ;
 int FSCR_TAR_LG ;
 int KVM_EXIT_INTERNAL_ERROR ;
 int MSR_FP ;
 int MSR_VEC ;
 int MSR_VSX ;
 int OUTSIDE_GUEST_MODE ;
 int __kvmppc_vcpu_run (struct kvm_run*,struct kvm_vcpu*) ;
 int current ;
 int giveup_all (int ) ;
 int kvmppc_clear_debug (struct kvm_vcpu*) ;
 int kvmppc_fix_ee_before_entry () ;
 int kvmppc_get_msr (struct kvm_vcpu*) ;
 int kvmppc_giveup_ext (struct kvm_vcpu*,int) ;
 int kvmppc_giveup_fac (struct kvm_vcpu*,int ) ;
 int kvmppc_handle_ext (struct kvm_vcpu*,int ,int) ;
 int kvmppc_prepare_to_enter (struct kvm_vcpu*) ;
 int kvmppc_setup_debug (struct kvm_vcpu*) ;

__attribute__((used)) static int kvmppc_vcpu_run_pr(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
{
 int ret;





 if (!vcpu->arch.sane) {
  kvm_run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  ret = -EINVAL;
  goto out;
 }

 kvmppc_setup_debug(vcpu);







 ret = kvmppc_prepare_to_enter(vcpu);
 if (ret <= 0)
  goto out;



 giveup_all(current);


 if (kvmppc_get_msr(vcpu) & MSR_FP)
  kvmppc_handle_ext(vcpu, BOOK3S_INTERRUPT_FP_UNAVAIL, MSR_FP);

 kvmppc_fix_ee_before_entry();

 ret = __kvmppc_vcpu_run(kvm_run, vcpu);

 kvmppc_clear_debug(vcpu);





 kvmppc_giveup_ext(vcpu, MSR_FP | MSR_VEC | MSR_VSX);


 kvmppc_giveup_fac(vcpu, FSCR_TAR_LG);

out:
 vcpu->mode = OUTSIDE_GUEST_MODE;
 return ret;
}
