
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct kvmppc_vcpu_book3s {int mmu_lock; int hpte_cache_count; int * hpte_hash_vpte_64k; int * hpte_hash_vpte_long; int * hpte_hash_vpte; int * hpte_hash_pte_long; int * hpte_hash_pte; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int vpage; int eaddr; } ;
struct hpte_cache {int list_vpte_64k; TYPE_1__ pte; int list_vpte_long; int list_vpte; int list_pte_long; int list_pte; } ;


 int hlist_add_head_rcu (int *,int *) ;
 size_t kvmppc_mmu_hash_pte (int ) ;
 size_t kvmppc_mmu_hash_pte_long (int ) ;
 size_t kvmppc_mmu_hash_vpte (int ) ;
 size_t kvmppc_mmu_hash_vpte_64k (int ) ;
 size_t kvmppc_mmu_hash_vpte_long (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;
 int trace_kvm_book3s_mmu_map (struct hpte_cache*) ;

void kvmppc_mmu_hpte_cache_map(struct kvm_vcpu *vcpu, struct hpte_cache *pte)
{
 u64 index;
 struct kvmppc_vcpu_book3s *vcpu3s = to_book3s(vcpu);

 trace_kvm_book3s_mmu_map(pte);

 spin_lock(&vcpu3s->mmu_lock);


 index = kvmppc_mmu_hash_pte(pte->pte.eaddr);
 hlist_add_head_rcu(&pte->list_pte, &vcpu3s->hpte_hash_pte[index]);


 index = kvmppc_mmu_hash_pte_long(pte->pte.eaddr);
 hlist_add_head_rcu(&pte->list_pte_long,
      &vcpu3s->hpte_hash_pte_long[index]);


 index = kvmppc_mmu_hash_vpte(pte->pte.vpage);
 hlist_add_head_rcu(&pte->list_vpte, &vcpu3s->hpte_hash_vpte[index]);


 index = kvmppc_mmu_hash_vpte_long(pte->pte.vpage);
 hlist_add_head_rcu(&pte->list_vpte_long,
      &vcpu3s->hpte_hash_vpte_long[index]);
 vcpu3s->hpte_cache_count++;

 spin_unlock(&vcpu3s->mmu_lock);
}
