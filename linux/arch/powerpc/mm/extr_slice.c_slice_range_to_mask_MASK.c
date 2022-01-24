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
struct slice_mask {unsigned int low_slices; int /*<<< orphan*/  high_slices; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned int FUNC2 (unsigned long) ; 
 unsigned long SLICE_HIGH_SHIFT ; 
 int SLICE_LOW_TOP ; 
 scalar_t__ SLICE_NUM_HIGH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long start, unsigned long len,
				struct slice_mask *ret)
{
	unsigned long end = start + len - 1;

	ret->low_slices = 0;
	if (SLICE_NUM_HIGH)
		FUNC4(ret->high_slices, SLICE_NUM_HIGH);

	if (FUNC6(start)) {
		unsigned long mend = FUNC5(end,
					 (unsigned long)(SLICE_LOW_TOP - 1));

		ret->low_slices = (1u << (FUNC2(mend) + 1))
			- (1u << FUNC2(start));
	}

	if (SLICE_NUM_HIGH && !FUNC6(end)) {
		unsigned long start_index = FUNC1(start);
		unsigned long align_end = FUNC0(end, (1UL << SLICE_HIGH_SHIFT));
		unsigned long count = FUNC1(align_end) - start_index;

		FUNC3(ret->high_slices, start_index, count);
	}
}