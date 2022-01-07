
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int word; int hword; } ;
struct reg_vpa {TYPE_1__ length; } ;
struct lppaca {int dummy; } ;
struct kvmppc_vpa {unsigned long next_gpa; unsigned long len; int update_pending; } ;
struct TYPE_4__ {int vpa_update_lock; struct kvmppc_vpa slb_shadow; struct kvmppc_vpa dtl; struct kvmppc_vpa vpa; } ;
struct kvm_vcpu {TYPE_2__ arch; struct kvm* kvm; } ;
struct kvm {int dummy; } ;
struct dtl_entry {int dummy; } ;


 int BUILD_BUG_ON (int) ;
 unsigned long H_PARAMETER ;
 int H_RESOURCE ;



 unsigned long H_VPA_FUNC_MASK ;
 unsigned long H_VPA_FUNC_SHIFT ;



 int L1_CACHE_BYTES ;
 unsigned long be16_to_cpu (int ) ;
 unsigned long be32_to_cpu (int ) ;
 struct kvm_vcpu* kvmppc_find_vcpu (struct kvm*,unsigned long) ;
 void* kvmppc_pin_guest_page (struct kvm*,unsigned long,unsigned long*) ;
 int kvmppc_unpin_guest_page (struct kvm*,void*,unsigned long,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vpa_is_registered (struct kvmppc_vpa*) ;

__attribute__((used)) static unsigned long do_h_register_vpa(struct kvm_vcpu *vcpu,
           unsigned long flags,
           unsigned long vcpuid, unsigned long vpa)
{
 struct kvm *kvm = vcpu->kvm;
 unsigned long len, nb;
 void *va;
 struct kvm_vcpu *tvcpu;
 int err;
 int subfunc;
 struct kvmppc_vpa *vpap;

 tvcpu = kvmppc_find_vcpu(kvm, vcpuid);
 if (!tvcpu)
  return H_PARAMETER;

 subfunc = (flags >> H_VPA_FUNC_SHIFT) & H_VPA_FUNC_MASK;
 if (subfunc == 128 || subfunc == 130 ||
     subfunc == 129) {

  if ((vpa & (L1_CACHE_BYTES - 1)) || !vpa)
   return H_PARAMETER;


  va = kvmppc_pin_guest_page(kvm, vpa, &nb);
  if (va == ((void*)0))
   return H_PARAMETER;
  if (subfunc == 128)
   len = be16_to_cpu(((struct reg_vpa *)va)->length.hword);
  else
   len = be32_to_cpu(((struct reg_vpa *)va)->length.word);
  kvmppc_unpin_guest_page(kvm, va, vpa, 0);


  if (len > nb || len < sizeof(struct reg_vpa))
   return H_PARAMETER;
 } else {
  vpa = 0;
  len = 0;
 }

 err = H_PARAMETER;
 vpap = ((void*)0);
 spin_lock(&tvcpu->arch.vpa_update_lock);

 switch (subfunc) {
 case 128:






  BUILD_BUG_ON(sizeof(struct lppaca) != 640);
  if (len < sizeof(struct lppaca))
   break;
  vpap = &tvcpu->arch.vpa;
  err = 0;
  break;

 case 130:
  if (len < sizeof(struct dtl_entry))
   break;
  len -= len % sizeof(struct dtl_entry);


  err = H_RESOURCE;
  if (!vpa_is_registered(&tvcpu->arch.vpa))
   break;

  vpap = &tvcpu->arch.dtl;
  err = 0;
  break;

 case 129:

  err = H_RESOURCE;
  if (!vpa_is_registered(&tvcpu->arch.vpa))
   break;

  vpap = &tvcpu->arch.slb_shadow;
  err = 0;
  break;

 case 131:

  err = H_RESOURCE;
  if (vpa_is_registered(&tvcpu->arch.dtl) ||
      vpa_is_registered(&tvcpu->arch.slb_shadow))
   break;

  vpap = &tvcpu->arch.vpa;
  err = 0;
  break;

 case 133:
  vpap = &tvcpu->arch.dtl;
  err = 0;
  break;

 case 132:
  vpap = &tvcpu->arch.slb_shadow;
  err = 0;
  break;
 }

 if (vpap) {
  vpap->next_gpa = vpa;
  vpap->len = len;
  vpap->update_pending = 1;
 }

 spin_unlock(&tvcpu->arch.vpa_update_lock);

 return err;
}
