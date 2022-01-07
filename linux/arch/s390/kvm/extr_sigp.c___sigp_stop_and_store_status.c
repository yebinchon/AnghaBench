
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int vcpu_id; } ;
struct TYPE_3__ {int flags; } ;
struct TYPE_4__ {TYPE_1__ stop; } ;
struct kvm_s390_irq {TYPE_2__ u; int type; } ;


 int EBUSY ;
 int KVM_S390_SIGP_STOP ;
 int KVM_S390_STOP_FLAG_STORE_STATUS ;
 int SIGP_CC_BUSY ;
 int VCPU_EVENT (struct kvm_vcpu*,int,char*,int ) ;
 int kvm_s390_inject_vcpu (struct kvm_vcpu*,struct kvm_s390_irq*) ;

__attribute__((used)) static int __sigp_stop_and_store_status(struct kvm_vcpu *vcpu,
     struct kvm_vcpu *dst_vcpu, u64 *reg)
{
 struct kvm_s390_irq irq = {
  .type = KVM_S390_SIGP_STOP,
  .u.stop.flags = KVM_S390_STOP_FLAG_STORE_STATUS,
 };
 int rc;

 rc = kvm_s390_inject_vcpu(dst_vcpu, &irq);
 if (rc == -EBUSY)
  rc = SIGP_CC_BUSY;
 else if (rc == 0)
  VCPU_EVENT(vcpu, 4, "sent sigp stop and store status to cpu %x",
      dst_vcpu->vcpu_id);

 return rc;
}
