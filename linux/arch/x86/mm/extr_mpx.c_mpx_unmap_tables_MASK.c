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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 
 int FUNC3 (struct mm_struct*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct mm_struct *mm,
		unsigned long start, unsigned long end)
{
	unsigned long one_unmap_start;
	FUNC2(start, end);

	one_unmap_start = start;
	while (one_unmap_start < end) {
		int ret;
		unsigned long next_unmap_start = FUNC0(one_unmap_start+1,
						       FUNC1(mm));
		unsigned long one_unmap_end = end;
		/*
		 * if the end is beyond the current bounds table,
		 * move it back so we only deal with a single one
		 * at a time
		 */
		if (one_unmap_end > next_unmap_start)
			one_unmap_end = next_unmap_start;
		ret = FUNC3(mm, one_unmap_start, one_unmap_end);
		if (ret)
			return ret;

		one_unmap_start = next_unmap_start;
	}
	return 0;
}