
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ipte_control {scalar_t__ val; int k; } ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_3__ {int ipte_lock_count; int ipte_mutex; int sca_lock; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 union ipte_control READ_ONCE (union ipte_control) ;
 scalar_t__ cmpxchg (scalar_t__*,scalar_t__,scalar_t__) ;
 int cond_resched () ;
 union ipte_control* kvm_s390_get_ipte_control (TYPE_2__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void ipte_lock_simple(struct kvm_vcpu *vcpu)
{
 union ipte_control old, new, *ic;

 mutex_lock(&vcpu->kvm->arch.ipte_mutex);
 vcpu->kvm->arch.ipte_lock_count++;
 if (vcpu->kvm->arch.ipte_lock_count > 1)
  goto out;
retry:
 read_lock(&vcpu->kvm->arch.sca_lock);
 ic = kvm_s390_get_ipte_control(vcpu->kvm);
 do {
  old = READ_ONCE(*ic);
  if (old.k) {
   read_unlock(&vcpu->kvm->arch.sca_lock);
   cond_resched();
   goto retry;
  }
  new = old;
  new.k = 1;
 } while (cmpxchg(&ic->val, old.val, new.val) != old.val);
 read_unlock(&vcpu->kvm->arch.sca_lock);
out:
 mutex_unlock(&vcpu->kvm->arch.ipte_mutex);
}
