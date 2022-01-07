
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct kvmppc_vcore {unsigned long lpcr; int lock; } ;
struct TYPE_2__ {unsigned long lpcr; scalar_t__ online_vcores; struct kvmppc_vcore** vcores; } ;
struct kvm {TYPE_1__ arch; } ;


 long KVM_MAX_VCORES ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void kvmppc_update_lpcr(struct kvm *kvm, unsigned long lpcr, unsigned long mask)
{
 long int i;
 u32 cores_done = 0;

 if ((kvm->arch.lpcr & mask) == lpcr)
  return;

 kvm->arch.lpcr = (kvm->arch.lpcr & ~mask) | lpcr;

 for (i = 0; i < KVM_MAX_VCORES; ++i) {
  struct kvmppc_vcore *vc = kvm->arch.vcores[i];
  if (!vc)
   continue;
  spin_lock(&vc->lock);
  vc->lpcr = (vc->lpcr & ~mask) | lpcr;
  spin_unlock(&vc->lock);
  if (++cores_done >= kvm->arch.online_vcores)
   break;
 }
}
