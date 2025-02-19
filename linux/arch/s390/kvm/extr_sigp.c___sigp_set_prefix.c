
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct kvm_vcpu {int kvm; } ;
struct TYPE_3__ {int address; } ;
struct TYPE_4__ {TYPE_1__ prefix; } ;
struct kvm_s390_irq {TYPE_2__ u; int type; } ;


 int EBUSY ;
 int KVM_S390_SIGP_SET_PREFIX ;
 int SIGP_CC_STATUS_STORED ;
 int SIGP_STATUS_INCORRECT_STATE ;
 int SIGP_STATUS_INVALID_PARAMETER ;
 scalar_t__ kvm_is_error_gpa (int ,int) ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;

__attribute__((used)) static int __sigp_set_prefix(struct kvm_vcpu *vcpu, struct kvm_vcpu *dst_vcpu,
        u32 address, u64 *reg)
{
 struct kvm_s390_irq irq = {
  .type = KVM_S390_SIGP_SET_PREFIX,
  .u.prefix.address = address & 0x7fffe000u,
 };
 int rc;






 if (kvm_is_error_gpa(vcpu->kvm, irq.u.prefix.address)) {
  *reg &= 0xffffffff00000000UL;
  *reg |= SIGP_STATUS_INVALID_PARAMETER;
  return SIGP_CC_STATUS_STORED;
 }

 rc = kvm_s390_inject_vcpu(dst_vcpu, &irq);
 if (rc == -EBUSY) {
  *reg &= 0xffffffff00000000UL;
  *reg |= SIGP_STATUS_INCORRECT_STATE;
  return SIGP_CC_STATUS_STORED;
 }

 return rc;
}
