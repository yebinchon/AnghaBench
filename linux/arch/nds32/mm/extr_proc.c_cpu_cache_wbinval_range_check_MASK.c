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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;
struct TYPE_2__ {unsigned long line_size; } ;

/* Variables and functions */
 size_t DCACHE ; 
 TYPE_1__* L1_cache_info ; 
 unsigned long PAGE_MASK ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

void FUNC7(struct vm_area_struct *vma,
				   unsigned long start, unsigned long end,
				   bool flushi, bool wbd)
{
	unsigned long line_size, t_start, t_end;

	if (!flushi && !wbd)
		return;
	line_size = L1_cache_info[DCACHE].line_size;
	start = start & ~(line_size - 1);
	end = (end + line_size - 1) & ~(line_size - 1);

	if ((end - start) > (8 * PAGE_SIZE)) {
		if (wbd)
			FUNC0();
		if (flushi)
			FUNC3();
		return;
	}

	t_start = (start + PAGE_SIZE) & PAGE_MASK;
	t_end = ((end - 1) & PAGE_MASK);

	if ((start & PAGE_MASK) == t_end) {
		if (FUNC6(vma->vm_mm, start)) {
			if (wbd)
				FUNC2(start, end);
			if (flushi)
				FUNC5(start, end);
		}
		return;
	}

	if (FUNC6(vma->vm_mm, start)) {
		if (wbd)
			FUNC2(start, t_start);
		if (flushi)
			FUNC5(start, t_start);
	}

	if (FUNC6(vma->vm_mm, end - 1)) {
		if (wbd)
			FUNC2(t_end, end);
		if (flushi)
			FUNC5(t_end, end);
	}

	while (t_start < t_end) {
		if (FUNC6(vma->vm_mm, t_start)) {
			if (wbd)
				FUNC1(t_start);
			if (flushi)
				FUNC4(t_start);
		}
		t_start += PAGE_SIZE;
	}
}