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
struct fixed_mtrr_segment {int start; int end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct fixed_mtrr_segment* fixed_seg_table ; 

__attribute__((used)) static void FUNC2(int seg, int unit, u64 *start, u64 *end)
{
	struct fixed_mtrr_segment *mtrr_seg = &fixed_seg_table[seg];
	u64 unit_size = FUNC1(seg);

	*start = mtrr_seg->start + unit * unit_size;
	*end = *start + unit_size;
	FUNC0(*end > mtrr_seg->end);
}