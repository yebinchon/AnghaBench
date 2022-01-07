
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct kvmppc_book3s_shadow_vcpu {int slb_max; TYPE_1__* slb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int esid; } ;


 int SLB_ESID_V ;
 struct kvmppc_book3s_shadow_vcpu* svcpu_get (struct kvm_vcpu*) ;
 int svcpu_put (struct kvmppc_book3s_shadow_vcpu*) ;

void kvmppc_mmu_flush_segment(struct kvm_vcpu *vcpu, ulong ea, ulong seg_size)
{
 struct kvmppc_book3s_shadow_vcpu *svcpu = svcpu_get(vcpu);
 ulong seg_mask = -seg_size;
 int i;

 for (i = 0; i < svcpu->slb_max; i++) {
  if ((svcpu->slb[i].esid & SLB_ESID_V) &&
      (svcpu->slb[i].esid & seg_mask) == ea) {

   svcpu->slb[i].esid = 0;
  }
 }

 svcpu_put(svcpu);
}
