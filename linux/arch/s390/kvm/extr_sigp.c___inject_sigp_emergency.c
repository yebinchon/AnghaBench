
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_3__ {int code; } ;
struct TYPE_4__ {TYPE_1__ emerg; } ;
struct kvm_s390_irq {TYPE_2__ u; int type; } ;


 int KVM_S390_INT_EMERGENCY ;
 int SIGP_CC_ORDER_CODE_ACCEPTED ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int ) ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;

__attribute__((used)) static int __inject_sigp_emergency(struct kvm_vcpu *vcpu,
        struct kvm_vcpu *dst_vcpu)
{
 struct kvm_s390_irq irq = {
  .type = KVM_S390_INT_EMERGENCY,
  .u.emerg.code = vcpu->vcpu_id,
 };
 int rc = 0;

 rc = kvm_s390_inject_vcpu(dst_vcpu, &irq);
 if (!rc)
  VCPU_EVENT(vcpu, 4, "sent sigp emerg to cpu %x",
      dst_vcpu->vcpu_id);

 return rc ? rc : SIGP_CC_ORDER_CODE_ACCEPTED;
}
