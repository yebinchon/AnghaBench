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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(u64 *sptep, u64 new_spte)
{
	bool flush = false;
	u64 old_spte = FUNC6(sptep, new_spte);

	if (!FUNC2(old_spte))
		return false;

	/*
	 * For the spte updated out of mmu-lock is safe, since
	 * we always atomically update it, see the comments in
	 * spte_has_volatile_bits().
	 */
	if (FUNC7(old_spte) &&
	      !FUNC3(new_spte))
		flush = true;

	/*
	 * Flush TLB when accessed/dirty states are changed in the page tables,
	 * to guarantee consistency between TLB and page tables.
	 */

	if (FUNC0(old_spte) && !FUNC0(new_spte)) {
		flush = true;
		FUNC4(FUNC8(old_spte));
	}

	if (FUNC1(old_spte) && !FUNC1(new_spte)) {
		flush = true;
		FUNC5(FUNC8(old_spte));
	}

	return flush;
}