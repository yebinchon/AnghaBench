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
#define  MALLOC_TSD_TEST_DATA_INIT 128 
 int /*<<< orphan*/  FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ data_cleanup_count ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void
FUNC5(int *data) {
	if (data_cleanup_count == 0) {
		FUNC1(*data, MALLOC_TSD_TEST_DATA_INIT,
		    "Argument passed into cleanup function should match tsd "
		    "value");
	}
	++data_cleanup_count;

	/*
	 * Allocate during cleanup for two rounds, in order to assure that
	 * jemalloc's internal tsd reinitialization happens.
	 */
	bool reincarnate = false;
	switch (*data) {
	case MALLOC_TSD_TEST_DATA_INIT:
		*data = 1;
		reincarnate = true;
		break;
	case 1:
		*data = 2;
		reincarnate = true;
		break;
	case 2:
		return;
	default:
		FUNC4();
	}

	if (reincarnate) {
		void *p = FUNC3(1, 0);
		FUNC0(p, "Unexpeced mallocx() failure");
		FUNC2(p, 0);
	}
}