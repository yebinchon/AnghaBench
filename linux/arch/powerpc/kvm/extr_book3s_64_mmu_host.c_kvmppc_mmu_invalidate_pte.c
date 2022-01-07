
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct hpte_cache {int pagesize; int host_vpn; int slot; } ;
struct TYPE_2__ {int (* hpte_invalidate ) (int ,int ,int ,int ,int ,int) ;} ;


 int MMU_SEGSIZE_256M ;
 TYPE_1__ mmu_hash_ops ;
 int stub1 (int ,int ,int ,int ,int ,int) ;

void kvmppc_mmu_invalidate_pte(struct kvm_vcpu *vcpu, struct hpte_cache *pte)
{
 mmu_hash_ops.hpte_invalidate(pte->slot, pte->host_vpn,
         pte->pagesize, pte->pagesize,
         MMU_SEGSIZE_256M, 0);
}
