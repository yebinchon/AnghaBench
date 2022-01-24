#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u64 ;
struct vm_area_struct {struct mm_struct* vm_mm; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct mm_struct {TYPE_1__ context; } ;
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 unsigned long FUNC1 (int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (unsigned long) ; 
 unsigned long MAS1_VALID ; 
 unsigned long MAS2_WIMGE_MASK ; 
 unsigned long MAS3_BAP_MASK ; 
 unsigned long MAS3_SW ; 
 unsigned long MAS3_UW ; 
 int /*<<< orphan*/  MMU_FTR_BIG_PHYS ; 
 int /*<<< orphan*/  MMU_FTR_USE_PAIRED_MAS ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PTE_BAP_SHIFT ; 
 unsigned long PTE_WIMGE_SHIFT ; 
 int /*<<< orphan*/  SPRN_MAS0 ; 
 int /*<<< orphan*/  SPRN_MAS1 ; 
 int /*<<< orphan*/  SPRN_MAS2 ; 
 int /*<<< orphan*/  SPRN_MAS3 ; 
 int /*<<< orphan*/  SPRN_MAS7 ; 
 int /*<<< orphan*/  SPRN_MAS7_MAS3 ; 
 unsigned long FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 unsigned long FUNC11 (unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 () ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC19 (unsigned long) ; 
 unsigned long FUNC20 (struct vm_area_struct*) ; 

__attribute__((used)) static void
FUNC21(struct vm_area_struct *vma, unsigned long ea, pte_t pte)
{
	unsigned long mas1, mas2;
	u64 mas7_3;
	unsigned long psize, tsize, shift;
	unsigned long flags;
	struct mm_struct *mm;
	int index;

	if (FUNC18(FUNC8(ea)))
		return;

	mm = vma->vm_mm;

	psize = FUNC20(vma);
	shift = FUNC4(psize);
	tsize = shift - 10;
	/*
	 * We can't be interrupted while we're setting up the MAS
	 * regusters or after we've confirmed that no tlb exists.
	 */
	FUNC10(flags);

	FUNC6();

	if (FUNC18(FUNC5(ea, mm->context.id))) {
		FUNC7();
		FUNC9(flags);
		return;
	}

	/* We have to use the CAM(TLB1) on FSL parts for hugepages */
	index = FUNC17();
	FUNC13(SPRN_MAS0, FUNC0(index) | FUNC1(1));

	mas1 = MAS1_VALID | FUNC2(mm->context.id) | FUNC3(tsize);
	mas2 = ea & ~((1UL << shift) - 1);
	mas2 |= (FUNC16(pte) >> PTE_WIMGE_SHIFT) & MAS2_WIMGE_MASK;
	mas7_3 = (u64)FUNC15(pte) << PAGE_SHIFT;
	mas7_3 |= (FUNC16(pte) >> PTE_BAP_SHIFT) & MAS3_BAP_MASK;
	if (!FUNC14(pte))
		mas7_3 &= ~(MAS3_SW|MAS3_UW);

	FUNC13(SPRN_MAS1, mas1);
	FUNC13(SPRN_MAS2, mas2);

	if (FUNC12(MMU_FTR_USE_PAIRED_MAS)) {
		FUNC13(SPRN_MAS7_MAS3, mas7_3);
	} else {
		if (FUNC12(MMU_FTR_BIG_PHYS))
			FUNC13(SPRN_MAS7, FUNC19(mas7_3));
		FUNC13(SPRN_MAS3, FUNC11(mas7_3));
	}

	asm volatile ("tlbwe");

	FUNC7();
	FUNC9(flags);
}