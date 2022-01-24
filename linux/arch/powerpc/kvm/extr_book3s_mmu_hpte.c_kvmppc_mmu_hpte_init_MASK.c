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
struct kvmppc_vcpu_book3s {int /*<<< orphan*/  mmu_lock; int /*<<< orphan*/  hpte_hash_vpte_64k; int /*<<< orphan*/  hpte_hash_vpte_long; int /*<<< orphan*/  hpte_hash_vpte; int /*<<< orphan*/  hpte_hash_pte_long; int /*<<< orphan*/  hpte_hash_pte; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct kvmppc_vcpu_book3s* FUNC3 (struct kvm_vcpu*) ; 

int FUNC4(struct kvm_vcpu *vcpu)
{
	struct kvmppc_vcpu_book3s *vcpu3s = FUNC3(vcpu);

	/* init hpte lookup hashes */
	FUNC1(vcpu3s->hpte_hash_pte,
				  FUNC0(vcpu3s->hpte_hash_pte));
	FUNC1(vcpu3s->hpte_hash_pte_long,
				  FUNC0(vcpu3s->hpte_hash_pte_long));
	FUNC1(vcpu3s->hpte_hash_vpte,
				  FUNC0(vcpu3s->hpte_hash_vpte));
	FUNC1(vcpu3s->hpte_hash_vpte_long,
				  FUNC0(vcpu3s->hpte_hash_vpte_long));
#ifdef CONFIG_PPC_BOOK3S_64
	kvmppc_mmu_hpte_init_hash(vcpu3s->hpte_hash_vpte_64k,
				  ARRAY_SIZE(vcpu3s->hpte_hash_vpte_64k));
#endif

	FUNC2(&vcpu3s->mmu_lock);

	return 0;
}