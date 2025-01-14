
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {TYPE_1__ extcall; } ;
struct kvm_s390_irq {TYPE_2__ u; int type; } ;


 int EBUSY ;
 int KVM_S390_INT_EXTERNAL_CALL ;
 int SIGP_CC_ORDER_CODE_ACCEPTED ;
 int SIGP_CC_STATUS_STORED ;
 int SIGP_STATUS_EXT_CALL_PENDING ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int ) ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;

__attribute__((used)) static int __sigp_external_call(struct kvm_vcpu *vcpu,
    struct kvm_vcpu *dst_vcpu, u64 *reg)
{
 struct kvm_s390_irq irq = {
  .type = KVM_S390_INT_EXTERNAL_CALL,
  .u.extcall.code = vcpu->vcpu_id,
 };
 int rc;

 rc = kvm_s390_inject_vcpu(dst_vcpu, &irq);
 if (rc == -EBUSY) {
  *reg &= 0xffffffff00000000UL;
  *reg |= SIGP_STATUS_EXT_CALL_PENDING;
  return SIGP_CC_STATUS_STORED;
 } else if (rc == 0) {
  VCPU_EVENT(vcpu, 4, "sent sigp ext call to cpu %x",
      dst_vcpu->vcpu_id);
 }

 return rc ? rc : SIGP_CC_ORDER_CODE_ACCEPTED;
}
