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

/* Variables and functions */
 unsigned long NUM_ITLB_SETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	int i;
	unsigned long num_tlb_sets;

	/* Determine number of sets for IMMU. */
	/* FIXME: Assumption is I & D nsets equal. */
	num_tlb_sets = NUM_ITLB_SETS;

	for (i = 0; i < num_tlb_sets; i++) {
		FUNC2(FUNC0(0), i, 0);
		FUNC2(FUNC1(0), i, 0);
	}
}