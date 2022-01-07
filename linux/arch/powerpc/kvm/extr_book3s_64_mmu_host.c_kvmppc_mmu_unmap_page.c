
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvmppc_pte {int eaddr; int vpage; } ;
struct TYPE_3__ {int (* esid_to_vsid ) (struct kvm_vcpu*,int,int*) ;} ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int SID_SHIFT ;
 int VSID_64K ;
 int kvmppc_mmu_pte_vflush (struct kvm_vcpu*,int ,int) ;
 int stub1 (struct kvm_vcpu*,int,int*) ;

void kvmppc_mmu_unmap_page(struct kvm_vcpu *vcpu, struct kvmppc_pte *pte)
{
 u64 mask = 0xfffffffffULL;
 u64 vsid;

 vcpu->arch.mmu.esid_to_vsid(vcpu, pte->eaddr >> SID_SHIFT, &vsid);
 if (vsid & VSID_64K)
  mask = 0xffffffff0ULL;
 kvmppc_mmu_pte_vflush(vcpu, pte->vpage, mask);
}
