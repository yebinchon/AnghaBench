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
typedef  int /*<<< orphan*/  test_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  test_status_fail ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static void
FUNC2(test_status_t *status) {
#ifdef JEMALLOC_UNIT_TEST
	/*
	 * This check needs to peek into tsd internals, which is why it's only
	 * exposed in unit tests.
	 */
	if (tsd_global_slow()) {
		malloc_printf("Testing increased global slow count\n");
		*status = test_status_fail;
	}
#endif
}