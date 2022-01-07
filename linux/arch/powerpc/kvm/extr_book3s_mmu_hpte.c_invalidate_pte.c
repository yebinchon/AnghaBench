
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_book3s {int mmu_lock; int hpte_cache_count; } ;
struct kvm_vcpu {int dummy; } ;
struct hpte_cache {int rcu_head; int list_vpte_64k; int list_vpte_long; int list_vpte; int list_pte_long; int list_pte; } ;


 int call_rcu (int *,int ) ;
 int free_pte_rcu ;
 int hlist_del_init_rcu (int *) ;
 scalar_t__ hlist_unhashed (int *) ;
 int kvmppc_mmu_invalidate_pte (struct kvm_vcpu*,struct hpte_cache*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;
 int trace_kvm_book3s_mmu_invalidate (struct hpte_cache*) ;

__attribute__((used)) static void invalidate_pte(struct kvm_vcpu *vcpu, struct hpte_cache *pte)
{
 struct kvmppc_vcpu_book3s *vcpu3s = to_book3s(vcpu);

 trace_kvm_book3s_mmu_invalidate(pte);


 kvmppc_mmu_invalidate_pte(vcpu, pte);

 spin_lock(&vcpu3s->mmu_lock);


 if (hlist_unhashed(&pte->list_pte)) {
  spin_unlock(&vcpu3s->mmu_lock);
  return;
 }

 hlist_del_init_rcu(&pte->list_pte);
 hlist_del_init_rcu(&pte->list_pte_long);
 hlist_del_init_rcu(&pte->list_vpte);
 hlist_del_init_rcu(&pte->list_vpte_long);



 vcpu3s->hpte_cache_count--;

 spin_unlock(&vcpu3s->mmu_lock);

 call_rcu(&pte->rcu_head, free_pte_rcu);
}
