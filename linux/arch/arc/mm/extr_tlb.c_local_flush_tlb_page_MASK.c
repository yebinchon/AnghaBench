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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int const) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,unsigned int const) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 unsigned int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct vm_area_struct *vma, unsigned long page)
{
	const unsigned int cpu = FUNC4();
	unsigned long flags;

	/* Note that it is critical that interrupts are DISABLED between
	 * checking the ASID and using it flush the TLB entry
	 */
	FUNC3(flags);

	if (FUNC0(vma->vm_mm, cpu) != MM_CTXT_NO_ASID) {
		FUNC5((page & PAGE_MASK) | FUNC1(vma->vm_mm, cpu));
		FUNC6();
	}

	FUNC2(flags);
}