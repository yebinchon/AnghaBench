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
typedef  int /*<<< orphan*/  atomic_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  clock_sync_word ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void *dummy)
{
	atomic_t *sw_ptr = FUNC2(&clock_sync_word);
	/*
	 * Clear the in-sync bit 2^31. All get_phys_clock calls will
	 * fail until the sync bit is turned back on. In addition
	 * increase the "sequence" counter to avoid the race of an
	 * stp event and the complete recovery against get_phys_clock.
	 */
	FUNC0(0x80000000, sw_ptr);
	FUNC1(sw_ptr);
}