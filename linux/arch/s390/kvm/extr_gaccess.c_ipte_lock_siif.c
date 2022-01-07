
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


union ipte_control {scalar_t__ val; int k; int kh; scalar_t__ kg; } ;
struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_3__ {int sca_lock; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 union ipte_control READ_ONCE (union ipte_control) ;
 scalar_t__ cmpxchg (scalar_t__*,scalar_t__,scalar_t__) ;
 int cond_resched () ;
 union ipte_control* kvm_s390_get_ipte_control (TYPE_2__*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

__attribute__((used)) static void ipte_lock_siif(struct kvm_vcpu *vcpu)
{
 union ipte_control old, new, *ic;

retry:
 read_lock(&vcpu->kvm->arch.sca_lock);
 ic = kvm_s390_get_ipte_control(vcpu->kvm);
 do {
  old = READ_ONCE(*ic);
  if (old.kg) {
   read_unlock(&vcpu->kvm->arch.sca_lock);
   cond_resched();
   goto retry;
  }
  new = old;
  new.k = 1;
  new.kh++;
 } while (cmpxchg(&ic->val, old.val, new.val) != old.val);
 read_unlock(&vcpu->kvm->arch.sca_lock);
}
