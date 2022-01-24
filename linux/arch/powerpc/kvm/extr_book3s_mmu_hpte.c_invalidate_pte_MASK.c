#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kvmppc_vcpu_book3s {int /*<<< orphan*/  mmu_lock; int /*<<< orphan*/  hpte_cache_count; } ;
struct kvm_vcpu {int dummy; } ;
struct hpte_cache {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/  list_vpte_64k; int /*<<< orphan*/  list_vpte_long; int /*<<< orphan*/  list_vpte; int /*<<< orphan*/  list_pte_long; int /*<<< orphan*/  list_pte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_pte_rcu ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,struct hpte_cache*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct kvmppc_vcpu_book3s* FUNC6 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC7 (struct hpte_cache*) ; 

__attribute__((used)) static void FUNC8(struct kvm_vcpu *vcpu, struct hpte_cache *pte)
{
	struct kvmppc_vcpu_book3s *vcpu3s = FUNC6(vcpu);

	FUNC7(pte);

	/* Different for 32 and 64 bit */
	FUNC3(vcpu, pte);

	FUNC4(&vcpu3s->mmu_lock);

	/* pte already invalidated in between? */
	if (FUNC2(&pte->list_pte)) {
		FUNC5(&vcpu3s->mmu_lock);
		return;
	}

	FUNC1(&pte->list_pte);
	FUNC1(&pte->list_pte_long);
	FUNC1(&pte->list_vpte);
	FUNC1(&pte->list_vpte_long);
#ifdef CONFIG_PPC_BOOK3S_64
	hlist_del_init_rcu(&pte->list_vpte_64k);
#endif
	vcpu3s->hpte_cache_count--;

	FUNC5(&vcpu3s->mmu_lock);

	FUNC0(&pte->rcu_head, free_pte_rcu);
}