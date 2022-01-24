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
struct slice_mask {unsigned long low_slices; int /*<<< orphan*/  high_slices; } ;
struct mm_struct {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLB_ADDR_LIMIT_DEFAULT ; 
 int SLICE_NUM_HIGH ; 
 int SLICE_NUM_LOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int,int) ; 
 unsigned char* FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int mmu_virtual_psize ; 
 int /*<<< orphan*/  FUNC6 (char*,struct mm_struct*) ; 
 struct slice_mask* FUNC7 (int /*<<< orphan*/ *,unsigned int) ; 

void FUNC8(struct mm_struct *mm)
{
	unsigned char *hpsizes, *lpsizes;
	struct slice_mask *mask;
	unsigned int psize = mmu_virtual_psize;

	FUNC6("slice_init_new_context_exec(mm=%p)\n", mm);

	/*
	 * In the case of exec, use the default limit. In the
	 * case of fork it is just inherited from the mm being
	 * duplicated.
	 */
	FUNC4(&mm->context, SLB_ADDR_LIMIT_DEFAULT);
	FUNC5(&mm->context, psize);

	/*
	 * Set all slice psizes to the default.
	 */
	lpsizes = FUNC3(&mm->context);
	FUNC1(lpsizes, (psize << 4) | psize, SLICE_NUM_LOW >> 1);

	hpsizes = FUNC2(&mm->context);
	FUNC1(hpsizes, (psize << 4) | psize, SLICE_NUM_HIGH >> 1);

	/*
	 * Slice mask cache starts zeroed, fill the default size cache.
	 */
	mask = FUNC7(&mm->context, psize);
	mask->low_slices = ~0UL;
	if (SLICE_NUM_HIGH)
		FUNC0(mask->high_slices, SLICE_NUM_HIGH);
}