#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct revmap_entry {unsigned long forw; unsigned long guest_rpte; } ;
struct TYPE_3__ {scalar_t__ virt; struct revmap_entry* rev; } ;
struct TYPE_4__ {TYPE_1__ hpt; } ;
struct kvm {TYPE_2__ arch; } ;
typedef  int __be64 ;

/* Variables and functions */
 unsigned long HPTE_R_C ; 
 unsigned long HPTE_V_ABSENT ; 
 unsigned long HPTE_V_HVLOCK ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long KVMPPC_RMAP_INDEX ; 
 unsigned long KVMPPC_RMAP_PRESENT ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,unsigned long) ; 
 unsigned long FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,int*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC9 (struct kvm*,struct revmap_entry*) ; 
 int /*<<< orphan*/  FUNC10 (int*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long*) ; 
 scalar_t__ FUNC12 (struct kvm*) ; 

__attribute__((used)) static int FUNC13(struct kvm *kvm, unsigned long *rmapp)
{
	struct revmap_entry *rev = kvm->arch.hpt.rev;
	unsigned long head, i, j;
	unsigned long n;
	unsigned long v, r;
	__be64 *hptep;
	int npages_dirty = 0;

 retry:
	FUNC8(rmapp);
	if (!(*rmapp & KVMPPC_RMAP_PRESENT)) {
		FUNC11(rmapp);
		return npages_dirty;
	}

	i = head = *rmapp & KVMPPC_RMAP_INDEX;
	do {
		unsigned long hptep1;
		hptep = (__be64 *) (kvm->arch.hpt.virt + (i << 4));
		j = rev[i].forw;

		/*
		 * Checking the C (changed) bit here is racy since there
		 * is no guarantee about when the hardware writes it back.
		 * If the HPTE is not writable then it is stable since the
		 * page can't be written to, and we would have done a tlbie
		 * (which forces the hardware to complete any writeback)
		 * when making the HPTE read-only.
		 * If vcpus are running then this call is racy anyway
		 * since the page could get dirtied subsequently, so we
		 * expect there to be a further call which would pick up
		 * any delayed C bit writeback.
		 * Otherwise we need to do the tlbie even if C==0 in
		 * order to pick up any delayed writeback of C.
		 */
		hptep1 = FUNC1(hptep[1]);
		if (!(hptep1 & HPTE_R_C) &&
		    (!FUNC5(hptep1) || FUNC12(kvm)))
			continue;

		if (!FUNC10(hptep, HPTE_V_HVLOCK)) {
			/* unlock rmap before spinning on the HPTE lock */
			FUNC11(rmapp);
			while (hptep[0] & FUNC3(HPTE_V_HVLOCK))
				FUNC2();
			goto retry;
		}

		/* Now check and modify the HPTE */
		if (!(hptep[0] & FUNC3(HPTE_V_VALID))) {
			FUNC0(hptep, FUNC1(hptep[0]));
			continue;
		}

		/* need to make it temporarily absent so C is stable */
		hptep[0] |= FUNC3(HPTE_V_ABSENT);
		FUNC7(kvm, hptep, i);
		v = FUNC1(hptep[0]);
		r = FUNC1(hptep[1]);
		if (r & HPTE_R_C) {
			hptep[1] = FUNC3(r & ~HPTE_R_C);
			if (!(rev[i].guest_rpte & HPTE_R_C)) {
				rev[i].guest_rpte |= HPTE_R_C;
				FUNC9(kvm, &rev[i]);
			}
			n = FUNC6(v, r);
			n = (n + PAGE_SIZE - 1) >> PAGE_SHIFT;
			if (n > npages_dirty)
				npages_dirty = n;
			FUNC4();
		}
		v &= ~HPTE_V_ABSENT;
		v |= HPTE_V_VALID;
		FUNC0(hptep, v);
	} while ((i = j) != head);

	FUNC11(rmapp);
	return npages_dirty;
}