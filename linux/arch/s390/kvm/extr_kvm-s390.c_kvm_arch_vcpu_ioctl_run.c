
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit_userspace; } ;
struct kvm_vcpu {TYPE_1__ stat; int vcpu_id; int kvm; } ;
struct kvm_run {int kvm_valid_regs; int kvm_dirty_regs; int exit_reason; scalar_t__ immediate_exit; } ;


 int EINTR ;
 int EINVAL ;
 int EREMOTE ;
 int KVM_EXIT_INTR ;
 int KVM_SYNC_S390_VALID_FIELDS ;
 int __vcpu_run (struct kvm_vcpu*) ;
 int current ;
 int disable_cpu_timer_accounting (struct kvm_vcpu*) ;
 int enable_cpu_timer_accounting (struct kvm_vcpu*) ;
 scalar_t__ guestdbg_exit_pending (struct kvm_vcpu*) ;
 scalar_t__ is_vcpu_stopped (struct kvm_vcpu*) ;
 int kvm_s390_prepare_debug_exit (struct kvm_vcpu*) ;
 int kvm_s390_user_cpu_state_ctrl (int ) ;
 int kvm_s390_vcpu_start (struct kvm_vcpu*) ;
 int kvm_sigset_activate (struct kvm_vcpu*) ;
 int kvm_sigset_deactivate (struct kvm_vcpu*) ;
 int might_fault () ;
 int pr_err_ratelimited (char*,int ) ;
 scalar_t__ signal_pending (int ) ;
 int store_regs (struct kvm_vcpu*,struct kvm_run*) ;
 int sync_regs (struct kvm_vcpu*,struct kvm_run*) ;
 int vcpu_load (struct kvm_vcpu*) ;
 int vcpu_put (struct kvm_vcpu*) ;

int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *kvm_run)
{
 int rc;

 if (kvm_run->immediate_exit)
  return -EINTR;

 if (kvm_run->kvm_valid_regs & ~KVM_SYNC_S390_VALID_FIELDS ||
     kvm_run->kvm_dirty_regs & ~KVM_SYNC_S390_VALID_FIELDS)
  return -EINVAL;

 vcpu_load(vcpu);

 if (guestdbg_exit_pending(vcpu)) {
  kvm_s390_prepare_debug_exit(vcpu);
  rc = 0;
  goto out;
 }

 kvm_sigset_activate(vcpu);

 if (!kvm_s390_user_cpu_state_ctrl(vcpu->kvm)) {
  kvm_s390_vcpu_start(vcpu);
 } else if (is_vcpu_stopped(vcpu)) {
  pr_err_ratelimited("can't run stopped vcpu %d\n",
       vcpu->vcpu_id);
  rc = -EINVAL;
  goto out;
 }

 sync_regs(vcpu, kvm_run);
 enable_cpu_timer_accounting(vcpu);

 might_fault();
 rc = __vcpu_run(vcpu);

 if (signal_pending(current) && !rc) {
  kvm_run->exit_reason = KVM_EXIT_INTR;
  rc = -EINTR;
 }

 if (guestdbg_exit_pending(vcpu) && !rc) {
  kvm_s390_prepare_debug_exit(vcpu);
  rc = 0;
 }

 if (rc == -EREMOTE) {

  rc = 0;
 }

 disable_cpu_timer_accounting(vcpu);
 store_regs(vcpu, kvm_run);

 kvm_sigset_deactivate(vcpu);

 vcpu->stat.exit_userspace++;
out:
 vcpu_put(vcpu);
 return rc;
}
