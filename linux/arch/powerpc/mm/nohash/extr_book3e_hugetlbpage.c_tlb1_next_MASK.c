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
 int /*<<< orphan*/  SPRN_TLB1CFG ; 
 int TLBnCFG_N_ENTRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  next_tlbcam_idx ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tlbcam_index ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static inline int FUNC5(void)
{
	int index, ncams;

	ncams = FUNC2(SPRN_TLB1CFG) & TLBnCFG_N_ENTRY;

	index = FUNC3(next_tlbcam_idx);

	/* Just round-robin the entries and wrap when we hit the end */
	if (FUNC4(index == ncams - 1))
		FUNC1(next_tlbcam_idx, tlbcam_index);
	else
		FUNC0(next_tlbcam_idx);

	return index;
}