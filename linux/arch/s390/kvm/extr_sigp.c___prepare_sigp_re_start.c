
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct kvm_s390_local_interrupt {int lock; } ;
struct TYPE_2__ {struct kvm_s390_local_interrupt local_int; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EOPNOTSUPP ;
 int SIGP_CC_BUSY ;
 scalar_t__ kvm_s390_is_stop_irq_pending (struct kvm_vcpu*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __prepare_sigp_re_start(struct kvm_vcpu *vcpu,
       struct kvm_vcpu *dst_vcpu, u8 order_code)
{
 struct kvm_s390_local_interrupt *li = &dst_vcpu->arch.local_int;

 int rc = -EOPNOTSUPP;


 spin_lock(&li->lock);
 if (kvm_s390_is_stop_irq_pending(dst_vcpu))
  rc = SIGP_CC_BUSY;
 spin_unlock(&li->lock);

 return rc;
}
