#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
struct kvmppc_vcpu_book3s {int /*<<< orphan*/  mmu_lock; int /*<<< orphan*/  hpte_cache_count; int /*<<< orphan*/ * hpte_hash_vpte_64k; int /*<<< orphan*/ * hpte_hash_vpte_long; int /*<<< orphan*/ * hpte_hash_vpte; int /*<<< orphan*/ * hpte_hash_pte_long; int /*<<< orphan*/ * hpte_hash_pte; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vpage; int /*<<< orphan*/  eaddr; } ;
struct hpte_cache {int /*<<< orphan*/  list_vpte_64k; TYPE_1__ pte; int /*<<< orphan*/  list_vpte_long; int /*<<< orphan*/  list_vpte; int /*<<< orphan*/  list_pte_long; int /*<<< orphan*/  list_pte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct kvmppc_vcpu_book3s* FUNC8 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC9 (struct hpte_cache*) ; 

void FUNC10(struct kvm_vcpu *vcpu, struct hpte_cache *pte)
{
	u64 index;
	struct kvmppc_vcpu_book3s *vcpu3s = FUNC8(vcpu);

	FUNC9(pte);

	FUNC6(&vcpu3s->mmu_lock);

	/* Add to ePTE list */
	index = FUNC1(pte->pte.eaddr);
	FUNC0(&pte->list_pte, &vcpu3s->hpte_hash_pte[index]);

	/* Add to ePTE_long list */
	index = FUNC2(pte->pte.eaddr);
	FUNC0(&pte->list_pte_long,
			   &vcpu3s->hpte_hash_pte_long[index]);

	/* Add to vPTE list */
	index = FUNC3(pte->pte.vpage);
	FUNC0(&pte->list_vpte, &vcpu3s->hpte_hash_vpte[index]);

	/* Add to vPTE_long list */
	index = FUNC5(pte->pte.vpage);
	FUNC0(&pte->list_vpte_long,
			   &vcpu3s->hpte_hash_vpte_long[index]);

#ifdef CONFIG_PPC_BOOK3S_64
	/* Add to vPTE_64k list */
	index = kvmppc_mmu_hash_vpte_64k(pte->pte.vpage);
	hlist_add_head_rcu(&pte->list_vpte_64k,
			   &vcpu3s->hpte_hash_vpte_64k[index]);
#endif

	vcpu3s->hpte_cache_count++;

	FUNC7(&vcpu3s->mmu_lock);
}