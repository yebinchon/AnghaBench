
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct debug_reg {int dummy; } ;
struct TYPE_5__ {int pgdir; struct debug_reg dbg_reg; int sane; } ;
struct kvm_vcpu {int mode; TYPE_1__ arch; } ;
struct kvm_run {int exit_reason; } ;
struct TYPE_7__ {struct debug_reg debug; } ;
struct TYPE_8__ {TYPE_3__ thread; TYPE_2__* mm; } ;
struct TYPE_6__ {int pgd; } ;


 int CPU_FTR_ALTIVEC ;
 int EINVAL ;
 int KVM_EXIT_INTERNAL_ERROR ;
 int OUTSIDE_GUEST_MODE ;
 int __kvmppc_vcpu_run (struct kvm_run*,struct kvm_vcpu*) ;
 scalar_t__ cpu_has_feature (int ) ;
 TYPE_4__* current ;
 int enable_kernel_altivec () ;
 int enable_kernel_fp () ;
 int kvmppc_fix_ee_before_entry () ;
 int kvmppc_load_guest_altivec (struct kvm_vcpu*) ;
 int kvmppc_load_guest_fp (struct kvm_vcpu*) ;
 int kvmppc_prepare_to_enter (struct kvm_vcpu*) ;
 int kvmppc_save_guest_altivec (struct kvm_vcpu*) ;
 int kvmppc_save_guest_fp (struct kvm_vcpu*) ;
 int switch_booke_debug_regs (struct debug_reg*) ;

int kvmppc_vcpu_run(struct kvm_run *kvm_run, struct kvm_vcpu *vcpu)
{
 int ret, s;
 struct debug_reg debug;

 if (!vcpu->arch.sane) {
  kvm_run->exit_reason = KVM_EXIT_INTERNAL_ERROR;
  return -EINVAL;
 }

 s = kvmppc_prepare_to_enter(vcpu);
 if (s <= 0) {
  ret = s;
  goto out;
 }
 debug = vcpu->arch.dbg_reg;
 switch_booke_debug_regs(&debug);
 debug = current->thread.debug;
 current->thread.debug = vcpu->arch.dbg_reg;

 vcpu->arch.pgdir = current->mm->pgd;
 kvmppc_fix_ee_before_entry();

 ret = __kvmppc_vcpu_run(kvm_run, vcpu);





 switch_booke_debug_regs(&debug);
 current->thread.debug = debug;
out:
 vcpu->mode = OUTSIDE_GUEST_MODE;
 return ret;
}
