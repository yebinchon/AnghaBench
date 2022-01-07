
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct kvmppc_slb {size_t orige; } ;
struct TYPE_2__ {size_t slb_nr; struct kvmppc_slb* slb; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;



__attribute__((used)) static u64 kvmppc_mmu_book3s_64_slbmfee(struct kvm_vcpu *vcpu, u64 slb_nr)
{
 struct kvmppc_slb *slbe;

 if (slb_nr > vcpu->arch.slb_nr)
  return 0;

 slbe = &vcpu->arch.slb[slb_nr];

 return slbe->orige;
}
