
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union esca_sigp_ctrl {int scn; int c; int value; int member_0; } ;
union bsca_sigp_ctrl {int scn; int c; int value; int member_0; } ;
struct kvm_vcpu {size_t vcpu_id; TYPE_3__* kvm; } ;
struct esca_block {TYPE_1__* cpu; } ;
struct bsca_block {TYPE_1__* cpu; } ;
struct TYPE_5__ {int sca_lock; struct esca_block* sca; scalar_t__ use_esca; } ;
struct TYPE_6__ {TYPE_2__ arch; } ;
struct TYPE_4__ {union esca_sigp_ctrl sigp_ctrl; } ;


 int BUG_ON (int) ;
 int CPUSTAT_ECALL_PEND ;
 int EBUSY ;
 int cmpxchg (int*,int,int) ;
 int kvm_s390_set_cpuflags (struct kvm_vcpu*,int ) ;
 int kvm_s390_use_sca_entries () ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static int sca_inject_ext_call(struct kvm_vcpu *vcpu, int src_id)
{
 int expect, rc;

 BUG_ON(!kvm_s390_use_sca_entries());
 read_lock(&vcpu->kvm->arch.sca_lock);
 if (vcpu->kvm->arch.use_esca) {
  struct esca_block *sca = vcpu->kvm->arch.sca;
  union esca_sigp_ctrl *sigp_ctrl =
   &(sca->cpu[vcpu->vcpu_id].sigp_ctrl);
  union esca_sigp_ctrl new_val = {0}, old_val = *sigp_ctrl;

  new_val.scn = src_id;
  new_val.c = 1;
  old_val.c = 0;

  expect = old_val.value;
  rc = cmpxchg(&sigp_ctrl->value, old_val.value, new_val.value);
 } else {
  struct bsca_block *sca = vcpu->kvm->arch.sca;
  union bsca_sigp_ctrl *sigp_ctrl =
   &(sca->cpu[vcpu->vcpu_id].sigp_ctrl);
  union bsca_sigp_ctrl new_val = {0}, old_val = *sigp_ctrl;

  new_val.scn = src_id;
  new_val.c = 1;
  old_val.c = 0;

  expect = old_val.value;
  rc = cmpxchg(&sigp_ctrl->value, old_val.value, new_val.value);
 }
 read_unlock(&vcpu->kvm->arch.sca_lock);

 if (rc != expect) {

  return -EBUSY;
 }
 kvm_s390_set_cpuflags(vcpu, CPUSTAT_ECALL_PEND);
 return 0;
}
