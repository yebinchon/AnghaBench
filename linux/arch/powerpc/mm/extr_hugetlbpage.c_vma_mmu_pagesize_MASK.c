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
struct vm_area_struct {int /*<<< orphan*/  vm_start; int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PPC_MM_SLICES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned long FUNC4 (struct vm_area_struct*) ; 

unsigned long FUNC5(struct vm_area_struct *vma)
{
	/* With radix we don't use slice, so derive it from vma*/
	if (FUNC0(CONFIG_PPC_MM_SLICES) && !FUNC3()) {
		unsigned int psize = FUNC1(vma->vm_mm, vma->vm_start);

		return 1UL << FUNC2(psize);
	}
	return FUNC4(vma);
}