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

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int shadow_accessed_mask ; 
 int shadow_dirty_mask ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static bool FUNC5(u64 spte)
{
	if (!FUNC1(spte))
		return false;

	/*
	 * Always atomically update spte if it can be updated
	 * out of mmu-lock, it can ensure dirty bit is not lost,
	 * also, it can help us to get a stable is_writable_pte()
	 * to ensure tlb flush is not missed.
	 */
	if (FUNC4(spte) ||
	    FUNC0(spte))
		return true;

	if (FUNC3(spte)) {
		if ((spte & shadow_accessed_mask) == 0 ||
	    	    (FUNC2(spte) && (spte & shadow_dirty_mask) == 0))
			return true;
	}

	return false;
}