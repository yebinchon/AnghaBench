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
typedef  scalar_t__ u64 ;
struct fixed_mtrr_segment {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int FUNC0 (struct fixed_mtrr_segment*) ; 
 struct fixed_mtrr_segment* fixed_seg_table ; 

__attribute__((used)) static int FUNC1(u64 addr)
{
	struct fixed_mtrr_segment *mtrr_seg;
	int seg, seg_num = FUNC0(fixed_seg_table);

	for (seg = 0; seg < seg_num; seg++) {
		mtrr_seg = &fixed_seg_table[seg];
		if (mtrr_seg->start <= addr && addr < mtrr_seg->end)
			return seg;
	}

	return -1;
}