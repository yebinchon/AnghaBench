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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_add_fixed_timers ; 
 int /*<<< orphan*/  test_add_rand_timers ; 
 int /*<<< orphan*/  test_del_timers ; 
 int /*<<< orphan*/  test_exhaustive ; 
 int /*<<< orphan*/  test_get_wake_at ; 
 int /*<<< orphan*/  test_invalid_timer ; 
 int /*<<< orphan*/  test_multiple_cascade_in_sparse_wheels ; 
 int /*<<< orphan*/  test_overflow ; 
 int /*<<< orphan*/  test_slot_calc ; 

void FUNC1()
{
    FUNC0("slot calculation", test_slot_calc);
    FUNC0("add fixed timers", test_add_fixed_timers);
    FUNC0("add random timers", test_add_rand_timers);
    FUNC0("del fixed timers", test_del_timers);
    FUNC0("test out-of-range timer", test_invalid_timer);
    FUNC0("exhaustive", test_exhaustive);
    FUNC0("overflow", test_overflow);
    FUNC0("get_wake_at", test_get_wake_at);
    FUNC0("multiple_cascade_in_sparse_wheels", test_multiple_cascade_in_sparse_wheels);
}