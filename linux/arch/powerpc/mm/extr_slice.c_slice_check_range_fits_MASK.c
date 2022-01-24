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
typedef  int u64 ;
struct slice_mask {int low_slices; int /*<<< orphan*/  high_slices; } ;
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,unsigned long) ; 
 unsigned long FUNC1 (unsigned long) ; 
 unsigned int FUNC2 (unsigned long) ; 
 unsigned long SLICE_HIGH_SHIFT ; 
 int SLICE_LOW_TOP ; 
 scalar_t__ SLICE_NUM_HIGH ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(struct mm_struct *mm,
			   const struct slice_mask *available,
			   unsigned long start, unsigned long len)
{
	unsigned long end = start + len - 1;
	u64 low_slices = 0;

	if (FUNC4(start)) {
		unsigned long mend = FUNC3(end,
					 (unsigned long)(SLICE_LOW_TOP - 1));

		low_slices = (1u << (FUNC2(mend) + 1))
				- (1u << FUNC2(start));
	}
	if ((low_slices & available->low_slices) != low_slices)
		return false;

	if (SLICE_NUM_HIGH && !FUNC4(end)) {
		unsigned long start_index = FUNC1(start);
		unsigned long align_end = FUNC0(end, (1UL << SLICE_HIGH_SHIFT));
		unsigned long count = FUNC1(align_end) - start_index;
		unsigned long i;

		for (i = start_index; i < start_index + count; i++) {
			if (!FUNC5(i, available->high_slices))
				return false;
		}
	}

	return true;
}