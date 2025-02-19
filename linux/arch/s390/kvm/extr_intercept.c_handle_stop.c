
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int exit_stop_request; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ stop; } ;
struct kvm_s390_local_interrupt {int lock; TYPE_2__ irq; } ;
struct TYPE_7__ {struct kvm_s390_local_interrupt local_int; } ;
struct kvm_vcpu {int kvm; TYPE_4__ stat; TYPE_3__ arch; } ;


 int EOPNOTSUPP ;
 int KVM_S390_STOP_FLAG_STORE_STATUS ;
 int KVM_S390_STORE_STATUS_NOADDR ;
 int kvm_s390_is_stop_irq_pending (struct kvm_vcpu*) ;
 int kvm_s390_user_cpu_state_ctrl (int ) ;
 scalar_t__ kvm_s390_vcpu_has_irq (struct kvm_vcpu*,int) ;
 int kvm_s390_vcpu_stop (struct kvm_vcpu*) ;
 int kvm_s390_vcpu_store_status (struct kvm_vcpu*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_kvm_s390_stop_request (int,int) ;

__attribute__((used)) static int handle_stop(struct kvm_vcpu *vcpu)
{
 struct kvm_s390_local_interrupt *li = &vcpu->arch.local_int;
 int rc = 0;
 uint8_t flags, stop_pending;

 vcpu->stat.exit_stop_request++;


 if (kvm_s390_vcpu_has_irq(vcpu, 1))
  return 0;


 spin_lock(&li->lock);
 flags = li->irq.stop.flags;
 stop_pending = kvm_s390_is_stop_irq_pending(vcpu);
 spin_unlock(&li->lock);

 trace_kvm_s390_stop_request(stop_pending, flags);
 if (!stop_pending)
  return 0;

 if (flags & KVM_S390_STOP_FLAG_STORE_STATUS) {
  rc = kvm_s390_vcpu_store_status(vcpu,
      KVM_S390_STORE_STATUS_NOADDR);
  if (rc)
   return rc;
 }

 if (!kvm_s390_user_cpu_state_ctrl(vcpu->kvm))
  kvm_s390_vcpu_stop(vcpu);
 return -EOPNOTSUPP;
}
