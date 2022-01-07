
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct kvmppc_slb {int orige; int origv; } ;
struct TYPE_2__ {int slb_nr; struct kvmppc_slb* slb; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef int gva_t ;


 int ESID_MASK ;
 int ESID_MASK_1T ;
 int SLB_ESID_V ;
 int SLB_VSID_B_1T ;

__attribute__((used)) static struct kvmppc_slb *kvmppc_mmu_book3s_hv_find_slbe(struct kvm_vcpu *vcpu,
        gva_t eaddr)
{
 u64 mask;
 int i;

 for (i = 0; i < vcpu->arch.slb_nr; i++) {
  if (!(vcpu->arch.slb[i].orige & SLB_ESID_V))
   continue;

  if (vcpu->arch.slb[i].origv & SLB_VSID_B_1T)
   mask = ESID_MASK_1T;
  else
   mask = ESID_MASK;

  if (((vcpu->arch.slb[i].orige ^ eaddr) & mask) == 0)
   return &vcpu->arch.slb[i];
 }
 return ((void*)0);
}
