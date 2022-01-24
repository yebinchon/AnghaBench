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
typedef  int /*<<< orphan*/  u32 ;
struct work_registers {int /*<<< orphan*/  r3; int /*<<< orphan*/  r2; int /*<<< orphan*/  r1; } ;
struct uasm_reloc {int dummy; } ;
struct uasm_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  C0_BADVADDR ; 
 int /*<<< orphan*/  C0_INDEX ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ PTE_ORDER ; 
 int PTE_T_LOG2 ; 
 int PTRS_PER_PTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,struct uasm_label**,struct uasm_reloc**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct work_registers FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,struct uasm_reloc**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  label_leave ; 
 int /*<<< orphan*/  label_tlb_huge_update ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ **,struct uasm_reloc**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct uasm_label**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct work_registers
FUNC18(u32 **p, struct uasm_label **l,
				   struct uasm_reloc **r)
{
	struct work_registers wr = FUNC6(p);

#ifdef CONFIG_64BIT
	build_get_pmde64(p, l, r, wr.r1, wr.r2); /* get pmd in ptr */
#else
	FUNC4(p, wr.r1, wr.r2); /* get pgd in ptr */
#endif

#ifdef CONFIG_MIPS_HUGE_TLB_SUPPORT
	/*
	 * For huge tlb entries, pmd doesn't contain an address but
	 * instead contains the tlb pte. Check the PAGE_HUGE bit and
	 * see if we need to jump to huge tlb processing.
	 */
	build_is_huge_pte(p, r, wr.r1, wr.r2, label_tlb_huge_update);
#endif

	FUNC2(p, wr.r1, C0_BADVADDR);
	FUNC1(p, wr.r2, 0, wr.r2);
	FUNC3(p, wr.r1, wr.r1, PAGE_SHIFT + PTE_ORDER - PTE_T_LOG2);
	FUNC12(p, wr.r1, wr.r1, (PTRS_PER_PTE - 1) << PTE_T_LOG2);
	FUNC0(p, wr.r2, wr.r2, wr.r1);

#ifdef CONFIG_SMP
	uasm_l_smp_pgtable_change(l, *p);
#endif
	FUNC10(p, wr.r1, wr.r2); /* get even pte */
	if (!FUNC11()) {
		FUNC8(p);
		if (FUNC9()) {
			/* race condition happens, leaving */
			FUNC13(p);
			FUNC14(p, wr.r3, C0_INDEX);
			FUNC16(p, r, wr.r3, label_leave);
			FUNC15(p);
		}
	}
	return wr;
}