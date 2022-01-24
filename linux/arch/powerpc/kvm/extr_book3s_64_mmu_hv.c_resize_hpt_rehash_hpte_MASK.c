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
struct revmap_entry {unsigned long guest_rpte; } ;
struct kvm_hpt_info {int order; struct revmap_entry* rev; scalar_t__ virt; } ;
struct kvm_resize_hpt {struct kvm_hpt_info hpt; struct kvm* kvm; } ;
struct TYPE_4__ {unsigned long* rmap; } ;
struct kvm_memory_slot {unsigned long base_gfn; TYPE_2__ arch; } ;
struct TYPE_3__ {struct kvm_hpt_info hpt; } ;
struct kvm {int /*<<< orphan*/  srcu; TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 int EIO ; 
 int ENOSPC ; 
 unsigned long HPTES_PER_GROUP ; 
 unsigned long HPTE_V_1TB_SEG ; 
 unsigned long HPTE_V_ABSENT ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned long HPTE_V_BOLTED ; 
 int /*<<< orphan*/  HPTE_V_HVLOCK ; 
 unsigned long HPTE_V_SECONDARY ; 
 unsigned long HPTE_V_VALID ; 
 struct kvm_memory_slot* FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (unsigned long) ; 
 unsigned long FUNC8 (unsigned long,unsigned long) ; 
 unsigned long FUNC9 (unsigned long,unsigned long) ; 
 unsigned long FUNC10 (unsigned long) ; 
 unsigned long FUNC11 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct kvm*) ; 
 unsigned long FUNC13 (unsigned long,unsigned long) ; 
 int FUNC14 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm*,unsigned long,struct kvm_memory_slot*,unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long*) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (unsigned long*) ; 

__attribute__((used)) static unsigned long FUNC22(struct kvm_resize_hpt *resize,
					    unsigned long idx)
{
	struct kvm *kvm = resize->kvm;
	struct kvm_hpt_info *old = &kvm->arch.hpt;
	struct kvm_hpt_info *new = &resize->hpt;
	unsigned long old_hash_mask = (1ULL << (old->order - 7)) - 1;
	unsigned long new_hash_mask = (1ULL << (new->order - 7)) - 1;
	__be64 *hptep, *new_hptep;
	unsigned long vpte, rpte, guest_rpte;
	int ret;
	struct revmap_entry *rev;
	unsigned long apsize, avpn, pteg, hash;
	unsigned long new_idx, new_pteg, replace_vpte;
	int pshift;

	hptep = (__be64 *)(old->virt + (idx << 4));

	/* Guest is stopped, so new HPTEs can't be added or faulted
	 * in, only unmapped or altered by host actions.  So, it's
	 * safe to check this before we take the HPTE lock */
	vpte = FUNC3(hptep[0]);
	if (!(vpte & HPTE_V_VALID) && !(vpte & HPTE_V_ABSENT))
		return 0; /* nothing to do */

	while (!FUNC19(hptep, HPTE_V_HVLOCK))
		FUNC5();

	vpte = FUNC3(hptep[0]);

	ret = 0;
	if (!(vpte & HPTE_V_VALID) && !(vpte & HPTE_V_ABSENT))
		/* Nothing to do */
		goto out;

	if (FUNC4(CPU_FTR_ARCH_300)) {
		rpte = FUNC3(hptep[1]);
		vpte = FUNC8(vpte, rpte);
	}

	/* Unmap */
	rev = &old->rev[idx];
	guest_rpte = rev->guest_rpte;

	ret = -EIO;
	apsize = FUNC13(vpte, guest_rpte);
	if (!apsize)
		goto out;

	if (vpte & HPTE_V_VALID) {
		unsigned long gfn = FUNC11(guest_rpte, apsize);
		int srcu_idx = FUNC17(&kvm->srcu);
		struct kvm_memory_slot *memslot =
			FUNC2(FUNC12(kvm), gfn);

		if (memslot) {
			unsigned long *rmapp;
			rmapp = &memslot->arch.rmap[gfn - memslot->base_gfn];

			FUNC16(rmapp);
			FUNC15(kvm, idx, memslot, rmapp, gfn);
			FUNC21(rmapp);
		}

		FUNC18(&kvm->srcu, srcu_idx);
	}

	/* Reload PTE after unmap */
	vpte = FUNC3(hptep[0]);
	FUNC0(vpte & HPTE_V_VALID);
	FUNC0(!(vpte & HPTE_V_ABSENT));

	ret = 0;
	if (!(vpte & HPTE_V_BOLTED))
		goto out;

	rpte = FUNC3(hptep[1]);

	if (FUNC4(CPU_FTR_ARCH_300)) {
		vpte = FUNC8(vpte, rpte);
		rpte = FUNC7(rpte);
	}

	pshift = FUNC14(vpte, rpte);
	avpn = FUNC1(vpte) & ~(((1ul << pshift) - 1) >> 23);
	pteg = idx / HPTES_PER_GROUP;
	if (vpte & HPTE_V_SECONDARY)
		pteg = ~pteg;

	if (!(vpte & HPTE_V_1TB_SEG)) {
		unsigned long offset, vsid;

		/* We only have 28 - 23 bits of offset in avpn */
		offset = (avpn & 0x1f) << 23;
		vsid = avpn >> 5;
		/* We can find more bits from the pteg value */
		if (pshift < 23)
			offset |= ((vsid ^ pteg) & old_hash_mask) << pshift;

		hash = vsid ^ (offset >> pshift);
	} else {
		unsigned long offset, vsid;

		/* We only have 40 - 23 bits of seg_off in avpn */
		offset = (avpn & 0x1ffff) << 23;
		vsid = avpn >> 17;
		if (pshift < 23)
			offset |= ((vsid ^ (vsid << 25) ^ pteg) & old_hash_mask) << pshift;

		hash = vsid ^ (vsid << 25) ^ (offset >> pshift);
	}

	new_pteg = hash & new_hash_mask;
	if (vpte & HPTE_V_SECONDARY)
		new_pteg = ~hash & new_hash_mask;

	new_idx = new_pteg * HPTES_PER_GROUP + (idx % HPTES_PER_GROUP);
	new_hptep = (__be64 *)(new->virt + (new_idx << 4));

	replace_vpte = FUNC3(new_hptep[0]);
	if (FUNC4(CPU_FTR_ARCH_300)) {
		unsigned long replace_rpte = FUNC3(new_hptep[1]);
		replace_vpte = FUNC8(replace_vpte, replace_rpte);
	}

	if (replace_vpte & (HPTE_V_VALID | HPTE_V_ABSENT)) {
		FUNC0(new->order >= old->order);

		if (replace_vpte & HPTE_V_BOLTED) {
			if (vpte & HPTE_V_BOLTED)
				/* Bolted collision, nothing we can do */
				ret = -ENOSPC;
			/* Discard the new HPTE */
			goto out;
		}

		/* Discard the previous HPTE */
	}

	if (FUNC4(CPU_FTR_ARCH_300)) {
		rpte = FUNC9(vpte, rpte);
		vpte = FUNC10(vpte);
	}

	new_hptep[1] = FUNC6(rpte);
	new->rev[new_idx].guest_rpte = guest_rpte;
	/* No need for a barrier, since new HPT isn't active */
	new_hptep[0] = FUNC6(vpte);
	FUNC20(new_hptep, vpte);

out:
	FUNC20(hptep, vpte);
	return ret;
}