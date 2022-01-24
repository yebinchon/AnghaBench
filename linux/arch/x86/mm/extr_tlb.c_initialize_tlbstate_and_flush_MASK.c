#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_7__ {int ctx_id; } ;
struct mm_struct {TYPE_2__ context; int /*<<< orphan*/  pgd; } ;
struct TYPE_10__ {TYPE_3__* ctxs; int /*<<< orphan*/  next_asid; int /*<<< orphan*/  loaded_mm_asid; int /*<<< orphan*/  last_user_mm_ibpb; int /*<<< orphan*/  loaded_mm; } ;
struct TYPE_6__ {int /*<<< orphan*/  tlb_gen; } ;
struct TYPE_9__ {TYPE_1__ context; } ;
struct TYPE_8__ {int /*<<< orphan*/  ctx_id; int /*<<< orphan*/  tlb_gen; } ;

/* Variables and functions */
 unsigned long CR3_ADDR_MASK ; 
 int LAST_USER_MM_IBPB ; 
 int TLB_NR_DYN_ASIDS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int X86_CR4_PCIDE ; 
 int /*<<< orphan*/  X86_FEATURE_PCID ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ cpu_tlbstate ; 
 int FUNC6 () ; 
 TYPE_4__ init_mm ; 
 struct mm_struct* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void FUNC10(void)
{
	int i;
	struct mm_struct *mm = FUNC7(cpu_tlbstate.loaded_mm);
	u64 tlb_gen = FUNC3(&init_mm.context.tlb_gen);
	unsigned long cr3 = FUNC2();

	/* Assert that CR3 already references the right mm. */
	FUNC0((cr3 & CR3_ADDR_MASK) != FUNC1(mm->pgd));

	/*
	 * Assert that CR4.PCIDE is set if needed.  (CR4.PCIDE initialization
	 * doesn't work like other CR4 bits because it can only be set from
	 * long mode.)
	 */
	FUNC0(FUNC4(X86_FEATURE_PCID) &&
		!(FUNC6() & X86_CR4_PCIDE));

	/* Force ASID 0 and force a TLB flush. */
	FUNC9(FUNC5(mm->pgd, 0));

	/* Reinitialize tlbstate. */
	FUNC8(cpu_tlbstate.last_user_mm_ibpb, LAST_USER_MM_IBPB);
	FUNC8(cpu_tlbstate.loaded_mm_asid, 0);
	FUNC8(cpu_tlbstate.next_asid, 1);
	FUNC8(cpu_tlbstate.ctxs[0].ctx_id, mm->context.ctx_id);
	FUNC8(cpu_tlbstate.ctxs[0].tlb_gen, tlb_gen);

	for (i = 1; i < TLB_NR_DYN_ASIDS; i++)
		FUNC8(cpu_tlbstate.ctxs[i].ctx_id, 0);
}