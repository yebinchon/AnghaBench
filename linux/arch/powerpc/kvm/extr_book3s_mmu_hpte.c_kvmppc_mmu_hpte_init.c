
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_book3s {int mmu_lock; int hpte_hash_vpte_64k; int hpte_hash_vpte_long; int hpte_hash_vpte; int hpte_hash_pte_long; int hpte_hash_pte; } ;
struct kvm_vcpu {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int kvmppc_mmu_hpte_init_hash (int ,int ) ;
 int spin_lock_init (int *) ;
 struct kvmppc_vcpu_book3s* to_book3s (struct kvm_vcpu*) ;

int kvmppc_mmu_hpte_init(struct kvm_vcpu *vcpu)
{
 struct kvmppc_vcpu_book3s *vcpu3s = to_book3s(vcpu);


 kvmppc_mmu_hpte_init_hash(vcpu3s->hpte_hash_pte,
      ARRAY_SIZE(vcpu3s->hpte_hash_pte));
 kvmppc_mmu_hpte_init_hash(vcpu3s->hpte_hash_pte_long,
      ARRAY_SIZE(vcpu3s->hpte_hash_pte_long));
 kvmppc_mmu_hpte_init_hash(vcpu3s->hpte_hash_vpte,
      ARRAY_SIZE(vcpu3s->hpte_hash_vpte));
 kvmppc_mmu_hpte_init_hash(vcpu3s->hpte_hash_vpte_long,
      ARRAY_SIZE(vcpu3s->hpte_hash_vpte_long));





 spin_lock_init(&vcpu3s->mmu_lock);

 return 0;
}
