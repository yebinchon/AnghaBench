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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  asid_generation ; 
 int /*<<< orphan*/  asid_map ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 

__attribute__((used)) static u64 FUNC9(struct mm_struct *mm)
{
	static u32 cur_idx = 1;
	u64 asid = FUNC4(&mm->context.id);
	u64 generation = FUNC4(&asid_generation);

	if (asid != 0) {
		u64 newasid = generation | (asid & ~ASID_MASK);

		/*
		 * If our current ASID was active during a rollover, we
		 * can continue to use it and this was just a false alarm.
		 */
		if (FUNC5(asid, newasid))
			return newasid;

		/*
		 * We had a valid ASID in a previous life, so try to re-use
		 * it if possible.
		 */
		if (!FUNC1(FUNC2(asid), asid_map))
			return newasid;
	}

	/*
	 * Allocate a free ASID. If we can't find one, take a note of the
	 * currently active ASIDs and mark the TLBs as requiring flushes.  We
	 * always count from ASID #2 (index 1), as we use ASID #0 when setting
	 * a reserved TTBR0 for the init_mm and we allocate ASIDs in even/odd
	 * pairs.
	 */
	asid = FUNC6(asid_map, NUM_USER_ASIDS, cur_idx);
	if (asid != NUM_USER_ASIDS)
		goto set_asid;

	/* We're out of ASIDs, so increment the global generation count */
	generation = FUNC3(ASID_FIRST_VERSION,
						 &asid_generation);
	FUNC7();

	/* We have more ASIDs than CPUs, so this will always succeed */
	asid = FUNC6(asid_map, NUM_USER_ASIDS, 1);

set_asid:
	FUNC0(asid, asid_map);
	cur_idx = asid;
	return FUNC8(asid) | generation;
}