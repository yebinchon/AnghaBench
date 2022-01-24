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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 scalar_t__ MM_CTXT_NO_ASID ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int const) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9(struct vm_area_struct *vma, unsigned long start,
			   unsigned long end)
{
	const unsigned int cpu = FUNC5();
	unsigned long flags;

	/* If range @start to @end is more than 32 TLB entries deep,
	 * its better to move to a new ASID rather than searching for
	 * individual entries and then shooting them down
	 *
	 * The calc above is rough, doesn't account for unaligned parts,
	 * since this is heuristics based anyways
	 */
	if (FUNC7((end - start) >= PAGE_SIZE * 32)) {
		FUNC2(vma->vm_mm);
		return;
	}

	/*
	 * @start moved to page start: this alone suffices for checking
	 * loop end condition below, w/o need for aligning @end to end
	 * e.g. 2000 to 4001 will anyhow loop twice
	 */
	start &= PAGE_MASK;

	FUNC4(flags);

	if (FUNC0(vma->vm_mm, cpu) != MM_CTXT_NO_ASID) {
		while (start < end) {
			FUNC6(start | FUNC1(vma->vm_mm, cpu));
			start += PAGE_SIZE;
		}
	}

	FUNC8();

	FUNC3(flags);
}