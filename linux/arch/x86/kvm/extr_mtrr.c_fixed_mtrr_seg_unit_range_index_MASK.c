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
struct fixed_mtrr_segment {scalar_t__ start; scalar_t__ end; int range_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct fixed_mtrr_segment* fixed_seg_table ; 

__attribute__((used)) static int FUNC2(int seg, int unit)
{
	struct fixed_mtrr_segment *mtrr_seg = &fixed_seg_table[seg];

	FUNC0(mtrr_seg->start + unit * FUNC1(seg)
		> mtrr_seg->end);

	/* each unit has 8 ranges. */
	return mtrr_seg->range_start + 8 * unit;
}