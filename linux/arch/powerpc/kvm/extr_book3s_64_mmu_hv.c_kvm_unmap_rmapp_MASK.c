#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_1__ arch; } ;
struct TYPE_5__ {scalar_t__ virt; } ;
struct TYPE_6__ {TYPE_2__ hpt; } ;
struct kvm {TYPE_3__ arch; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int HPTE_V_HVLOCK ; 
 unsigned long KVMPPC_RMAP_INDEX ; 
 unsigned long KVMPPC_RMAP_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,unsigned long,struct kvm_memory_slot*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long*) ; 

__attribute__((used)) static int FUNC7(struct kvm *kvm, struct kvm_memory_slot *memslot,
			   unsigned long gfn)
{
	unsigned long i;
	__be64 *hptep;
	unsigned long *rmapp;

	rmapp = &memslot->arch.rmap[gfn - memslot->base_gfn];
	for (;;) {
		FUNC4(rmapp);
		if (!(*rmapp & KVMPPC_RMAP_PRESENT)) {
			FUNC6(rmapp);
			break;
		}

		/*
		 * To avoid an ABBA deadlock with the HPTE lock bit,
		 * we can't spin on the HPTE lock while holding the
		 * rmap chain lock.
		 */
		i = *rmapp & KVMPPC_RMAP_INDEX;
		hptep = (__be64 *) (kvm->arch.hpt.virt + (i << 4));
		if (!FUNC5(hptep, HPTE_V_HVLOCK)) {
			/* unlock rmap before spinning on the HPTE lock */
			FUNC6(rmapp);
			while (FUNC1(hptep[0]) & HPTE_V_HVLOCK)
				FUNC2();
			continue;
		}

		FUNC3(kvm, i, memslot, rmapp, gfn);
		FUNC6(rmapp);
		FUNC0(hptep, FUNC1(hptep[0]));
	}
	return 0;
}