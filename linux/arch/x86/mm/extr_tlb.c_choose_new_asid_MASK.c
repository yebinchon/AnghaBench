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
typedef  scalar_t__ u64 ;
typedef  size_t u16 ;
struct TYPE_4__ {scalar_t__ ctx_id; } ;
struct mm_struct {TYPE_1__ context; } ;
struct TYPE_6__ {int /*<<< orphan*/  next_asid; TYPE_2__* ctxs; int /*<<< orphan*/  invalidate_other; } ;
struct TYPE_5__ {int /*<<< orphan*/  tlb_gen; int /*<<< orphan*/  ctx_id; } ;

/* Variables and functions */
 size_t TLB_NR_DYN_ASIDS ; 
 int /*<<< orphan*/  X86_FEATURE_PCID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__ cpu_tlbstate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct mm_struct *next, u64 next_tlb_gen,
			    u16 *new_asid, bool *need_flush)
{
	u16 asid;

	if (!FUNC1(X86_FEATURE_PCID)) {
		*new_asid = 0;
		*need_flush = true;
		return;
	}

	if (FUNC3(cpu_tlbstate.invalidate_other))
		FUNC0();

	for (asid = 0; asid < TLB_NR_DYN_ASIDS; asid++) {
		if (FUNC3(cpu_tlbstate.ctxs[asid].ctx_id) !=
		    next->context.ctx_id)
			continue;

		*new_asid = asid;
		*need_flush = (FUNC3(cpu_tlbstate.ctxs[asid].tlb_gen) <
			       next_tlb_gen);
		return;
	}

	/*
	 * We don't currently own an ASID slot on this CPU.
	 * Allocate a slot.
	 */
	*new_asid = FUNC2(cpu_tlbstate.next_asid, 1) - 1;
	if (*new_asid >= TLB_NR_DYN_ASIDS) {
		*new_asid = 0;
		FUNC4(cpu_tlbstate.next_asid, 1);
	}
	*need_flush = true;
}