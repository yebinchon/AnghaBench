#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* sie_block; } ;
struct kvm_vcpu {TYPE_7__* kvm; TYPE_5__ arch; TYPE_3__* run; } ;
struct kvm_memory_slot {scalar_t__ base_gfn; } ;
struct TYPE_14__ {int /*<<< orphan*/  cmma_dirty_pages; } ;
struct TYPE_15__ {TYPE_6__ arch; int /*<<< orphan*/  mm; } ;
struct TYPE_12__ {int cbrlo; } ;
struct TYPE_9__ {unsigned long* gprs; } ;
struct TYPE_10__ {TYPE_1__ regs; } ;
struct TYPE_11__ {TYPE_2__ s; } ;

/* Variables and functions */
 int PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  PGM_ADDRESSING ; 
 unsigned long _PAGE_INVALID ; 
 unsigned long _PGSTE_GPS_NODAT ; 
 unsigned long _PGSTE_GPS_USAGE_MASK ; 
 unsigned long _PGSTE_GPS_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (TYPE_7__*,unsigned long) ; 
 struct kvm_memory_slot* FUNC2 (TYPE_7__*,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*,int*,int*) ; 
 int FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm_memory_slot*) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned long,int const,unsigned long*,unsigned long*) ; 
 unsigned long* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC10(struct kvm_vcpu *vcpu, const int orc)
{
	int r1, r2, nappended, entries;
	unsigned long gfn, hva, res, pgstev, ptev;
	unsigned long *cbrlo;

	/*
	 * We don't need to set SD.FPF.SK to 1 here, because if we have a
	 * machine check here we either handle it or crash
	 */

	FUNC4(vcpu, &r1, &r2);
	gfn = vcpu->run->s.regs.gprs[r2] >> PAGE_SHIFT;
	hva = FUNC1(vcpu->kvm, gfn);
	entries = (vcpu->arch.sie_block->cbrlo & ~PAGE_MASK) >> 3;

	if (FUNC3(hva))
		return FUNC5(vcpu, PGM_ADDRESSING);

	nappended = FUNC7(vcpu->kvm->mm, hva, orc, &ptev, &pgstev);
	if (nappended < 0) {
		res = orc ? 0x10 : 0;
		vcpu->run->s.regs.gprs[r1] = res; /* Exception Indication */
		return 0;
	}
	res = (pgstev & _PGSTE_GPS_USAGE_MASK) >> 22;
	/*
	 * Set the block-content state part of the result. 0 means resident, so
	 * nothing to do if the page is valid. 2 is for preserved pages
	 * (non-present and non-zero), and 3 for zero pages (non-present and
	 * zero).
	 */
	if (ptev & _PAGE_INVALID) {
		res |= 2;
		if (pgstev & _PGSTE_GPS_ZERO)
			res |= 1;
	}
	if (pgstev & _PGSTE_GPS_NODAT)
		res |= 0x20;
	vcpu->run->s.regs.gprs[r1] = res;
	/*
	 * It is possible that all the normal 511 slots were full, in which case
	 * we will now write in the 512th slot, which is reserved for host use.
	 * In both cases we let the normal essa handling code process all the
	 * slots, including the reserved one, if needed.
	 */
	if (nappended > 0) {
		cbrlo = FUNC8(vcpu->arch.sie_block->cbrlo & PAGE_MASK);
		cbrlo[entries] = gfn << PAGE_SHIFT;
	}

	if (orc) {
		struct kvm_memory_slot *ms = FUNC2(vcpu->kvm, gfn);

		/* Increment only if we are really flipping the bit */
		if (ms && !FUNC9(gfn - ms->base_gfn, FUNC6(ms)))
			FUNC0(&vcpu->kvm->arch.cmma_dirty_pages);
	}

	return nappended;
}