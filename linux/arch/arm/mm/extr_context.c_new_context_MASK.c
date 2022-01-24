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
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct mm_struct {TYPE_1__ context; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASID_FIRST_VERSION ; 
 int ASID_MASK ; 
 int NUM_USER_ASIDS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  asid_generation ; 
 int /*<<< orphan*/  asid_map ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct mm_struct*) ; 

__attribute__((used)) static u64 FUNC9(struct mm_struct *mm, unsigned int cpu)
{
	static u32 cur_idx = 1;
	u64 asid = FUNC3(&mm->context.id);
	u64 generation = FUNC3(&asid_generation);

	if (asid != 0) {
		u64 newasid = generation | (asid & ~ASID_MASK);

		/*
		 * If our current ASID was active during a rollover, we
		 * can continue to use it and this was just a false alarm.
		 */
		if (FUNC4(asid, newasid))
			return newasid;

		/*
		 * We had a valid ASID in a previous life, so try to re-use
		 * it if possible.,
		 */
		asid &= ~ASID_MASK;
		if (!FUNC1(asid, asid_map))
			return newasid;
	}

	/*
	 * Allocate a free ASID. If we can't find one, take a note of the
	 * currently active ASIDs and mark the TLBs as requiring flushes.
	 * We always count from ASID #1, as we reserve ASID #0 to switch
	 * via TTBR0 and to avoid speculative page table walks from hitting
	 * in any partial walk caches, which could be populated from
	 * overlapping level-1 descriptors used to map both the module
	 * area and the userspace stack.
	 */
	asid = FUNC6(asid_map, NUM_USER_ASIDS, cur_idx);
	if (asid == NUM_USER_ASIDS) {
		generation = FUNC2(ASID_FIRST_VERSION,
						 &asid_generation);
		FUNC7(cpu);
		asid = FUNC6(asid_map, NUM_USER_ASIDS, 1);
	}

	FUNC0(asid, asid_map);
	cur_idx = asid;
	FUNC5(FUNC8(mm));
	return asid | generation;
}