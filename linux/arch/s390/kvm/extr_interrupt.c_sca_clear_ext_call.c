
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union esca_sigp_ctrl {int value; } ;
union bsca_sigp_ctrl {int value; } ;
struct kvm_vcpu {size_t vcpu_id; TYPE_3__* kvm; } ;
struct esca_block {TYPE_1__* cpu; } ;
struct bsca_block {TYPE_1__* cpu; } ;
struct TYPE_5__ {int sca_lock; struct esca_block* sca; scalar_t__ use_esca; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {union esca_sigp_ctrl sigp_ctrl; } ;


 int CPUSTAT_ECALL_PEND ;
 int WARN_ON (int) ;
 int cmpxchg (int*,int,int ) ;
 int kvm_s390_clear_cpuflags (struct kvm_vcpu*,int ) ;
 int kvm_s390_use_sca_entries () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void sca_clear_ext_call(struct kvm_vcpu *vcpu)
{
 int rc, expect;

 if (!kvm_s390_use_sca_entries())
  return;
 kvm_s390_clear_cpuflags(vcpu, CPUSTAT_ECALL_PEND);
 read_lock(&vcpu->kvm->arch.sca_lock);
 if (vcpu->kvm->arch.use_esca) {
  struct esca_block *sca = vcpu->kvm->arch.sca;
  union esca_sigp_ctrl *sigp_ctrl =
   &(sca->cpu[vcpu->vcpu_id].sigp_ctrl);
  union esca_sigp_ctrl old = *sigp_ctrl;

  expect = old.value;
  rc = cmpxchg(&sigp_ctrl->value, old.value, 0);
 } else {
  struct bsca_block *sca = vcpu->kvm->arch.sca;
  union bsca_sigp_ctrl *sigp_ctrl =
   &(sca->cpu[vcpu->vcpu_id].sigp_ctrl);
  union bsca_sigp_ctrl old = *sigp_ctrl;

  expect = old.value;
  rc = cmpxchg(&sigp_ctrl->value, old.value, 0);
 }
 read_unlock(&vcpu->kvm->arch.sca_lock);
 WARN_ON(rc != expect);
}
