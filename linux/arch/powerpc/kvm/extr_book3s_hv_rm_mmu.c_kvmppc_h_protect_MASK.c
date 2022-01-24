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
typedef  unsigned long u64 ;
struct revmap_entry {unsigned long guest_rpte; } ;
struct kvm_vcpu {struct kvm* kvm; } ;
struct TYPE_4__ {int /*<<< orphan*/ * rev; scalar_t__ virt; } ;
struct TYPE_3__ {int /*<<< orphan*/  mmio_update; TYPE_2__ hpt; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_FTR_ARCH_300 ; 
 unsigned long HPTE_R_C ; 
 unsigned long HPTE_R_KEY_HI ; 
 unsigned long HPTE_R_KEY_LO ; 
 unsigned long HPTE_R_N ; 
 unsigned long HPTE_R_PP ; 
 unsigned long HPTE_R_PP0 ; 
 unsigned long HPTE_R_R ; 
 unsigned long HPTE_V_ABSENT ; 
 unsigned long HPTE_V_HVLOCK ; 
 unsigned long HPTE_V_VALID ; 
 unsigned long H_AVPN ; 
 long H_FUNCTION ; 
 long H_NOT_FOUND ; 
 long H_PARAMETER ; 
 long H_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long,unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,unsigned long*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct kvm*) ; 
 scalar_t__ FUNC9 (unsigned long) ; 
 unsigned long FUNC10 (unsigned long) ; 
 unsigned long FUNC11 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC12 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC13 (struct kvm*) ; 
 unsigned long FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct kvm*,struct revmap_entry*) ; 
 struct revmap_entry* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 

long FUNC19(struct kvm_vcpu *vcpu, unsigned long flags,
		      unsigned long pte_index, unsigned long avpn,
		      unsigned long va)
{
	struct kvm *kvm = vcpu->kvm;
	__be64 *hpte;
	struct revmap_entry *rev;
	unsigned long v, r, rb, mask, bits;
	u64 pte_v, pte_r;

	if (FUNC13(kvm))
		return H_FUNCTION;
	if (pte_index >= FUNC14(&kvm->arch.hpt))
		return H_PARAMETER;

	hpte = (__be64 *)(kvm->arch.hpt.virt + (pte_index << 4));
	while (!FUNC17(hpte, HPTE_V_HVLOCK))
		FUNC5();
	v = pte_v = FUNC2(hpte[0]);
	if (FUNC4(CPU_FTR_ARCH_300))
		v = FUNC11(v, FUNC2(hpte[1]));
	if ((v & (HPTE_V_ABSENT | HPTE_V_VALID)) == 0 ||
	    ((flags & H_AVPN) && (v & ~0x7fUL) != avpn)) {
		FUNC0(hpte, pte_v);
		return H_NOT_FOUND;
	}

	pte_r = FUNC2(hpte[1]);
	bits = (flags << 55) & HPTE_R_PP0;
	bits |= (flags << 48) & HPTE_R_KEY_HI;
	bits |= flags & (HPTE_R_PP | HPTE_R_N | HPTE_R_KEY_LO);

	/* Update guest view of 2nd HPTE dword */
	mask = HPTE_R_PP0 | HPTE_R_PP | HPTE_R_N |
		HPTE_R_KEY_HI | HPTE_R_KEY_LO;
	rev = FUNC16(&kvm->arch.hpt.rev[pte_index]);
	if (rev) {
		r = (rev->guest_rpte & ~mask) | bits;
		rev->guest_rpte = r;
		FUNC15(kvm, rev);
	}

	/* Update HPTE */
	if (v & HPTE_V_VALID) {
		/*
		 * If the page is valid, don't let it transition from
		 * readonly to writable.  If it should be writable, we'll
		 * take a trap and let the page fault code sort it out.
		 */
		r = (pte_r & ~mask) | bits;
		if (FUNC9(r) && !FUNC9(pte_r))
			r = FUNC10(r);
		/* If the PTE is changing, invalidate it first */
		if (r != pte_r) {
			rb = FUNC3(v, r, pte_index);
			hpte[0] = FUNC6((pte_v & ~HPTE_V_VALID) |
					      HPTE_V_ABSENT);
			FUNC7(kvm, &rb, 1, FUNC8(kvm), true);
			/* Don't lose R/C bit updates done by hardware */
			r |= FUNC2(hpte[1]) & (HPTE_R_R | HPTE_R_C);
			hpte[1] = FUNC6(r);
		}
	}
	FUNC18(hpte, pte_v & ~HPTE_V_HVLOCK);
	asm volatile("ptesync" : : : "memory");
	if (FUNC12(v, pte_r))
		FUNC1(&kvm->arch.mmio_update);

	return H_SUCCESS;
}