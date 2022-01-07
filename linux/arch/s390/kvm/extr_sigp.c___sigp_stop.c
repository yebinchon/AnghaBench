
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int vcpu_id; } ;
struct kvm_s390_irq {int type; } ;


 int EBUSY ;
 int KVM_S390_SIGP_STOP ;
 int SIGP_CC_BUSY ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int ) ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;

__attribute__((used)) static int __sigp_stop(struct kvm_vcpu *vcpu, struct kvm_vcpu *dst_vcpu)
{
 struct kvm_s390_irq irq = {
  .type = KVM_S390_SIGP_STOP,
 };
 int rc;

 rc = kvm_s390_inject_vcpu(dst_vcpu, &irq);
 if (rc == -EBUSY)
  rc = SIGP_CC_BUSY;
 else if (rc == 0)
  VCPU_EVENT(vcpu, 4, "sent sigp stop to cpu %x",
      dst_vcpu->vcpu_id);

 return rc;
}
