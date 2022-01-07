
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int kvm; } ;


 scalar_t__ is_kvmppc_hv_enabled (int ) ;
 int kvmppc_set_int_pending (struct kvm_vcpu*,int) ;

__attribute__((used)) static inline void kvmppc_update_int_pending(struct kvm_vcpu *vcpu,
   unsigned long pending_now, unsigned long old_pending)
{
 if (is_kvmppc_hv_enabled(vcpu->kvm))
  return;
 if (pending_now)
  kvmppc_set_int_pending(vcpu, 1);
 else if (old_pending)
  kvmppc_set_int_pending(vcpu, 0);
}
