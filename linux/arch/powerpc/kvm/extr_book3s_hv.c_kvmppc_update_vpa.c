
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvmppc_vpa {unsigned long next_gpa; unsigned long len; void* pinned_addr; unsigned long gpa; int dirty; void* pinned_end; scalar_t__ update_pending; } ;
struct TYPE_2__ {int vpa_update_lock; } ;
struct kvm_vcpu {TYPE_1__ arch; struct kvm* kvm; } ;
struct kvm {int dummy; } ;


 void* kvmppc_pin_guest_page (struct kvm*,unsigned long,unsigned long*) ;
 int kvmppc_unpin_guest_page (struct kvm*,void*,unsigned long,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void kvmppc_update_vpa(struct kvm_vcpu *vcpu, struct kvmppc_vpa *vpap)
{
 struct kvm *kvm = vcpu->kvm;
 void *va;
 unsigned long nb;
 unsigned long gpa;
 for (;;) {
  gpa = vpap->next_gpa;
  spin_unlock(&vcpu->arch.vpa_update_lock);
  va = ((void*)0);
  nb = 0;
  if (gpa)
   va = kvmppc_pin_guest_page(kvm, gpa, &nb);
  spin_lock(&vcpu->arch.vpa_update_lock);
  if (gpa == vpap->next_gpa)
   break;

  if (va)
   kvmppc_unpin_guest_page(kvm, va, gpa, 0);
 }

 vpap->update_pending = 0;
 if (va && nb < vpap->len) {





  kvmppc_unpin_guest_page(kvm, va, gpa, 0);
  va = ((void*)0);
 }
 if (vpap->pinned_addr)
  kvmppc_unpin_guest_page(kvm, vpap->pinned_addr, vpap->gpa,
     vpap->dirty);
 vpap->gpa = gpa;
 vpap->pinned_addr = va;
 vpap->dirty = 0;
 if (va)
  vpap->pinned_end = va + vpap->len;
}
