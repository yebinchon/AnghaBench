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
typedef  int /*<<< orphan*/  tsd_t ;

/* Variables and functions */
 int MALLOC_TSD_TEST_DATA_INIT ; 
 int /*<<< orphan*/  FUNC0 (void*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  data_cleanup ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void *
FUNC8(void *arg) {
	int d = (int)(uintptr_t)arg;
	void *p;

	tsd_t *tsd = FUNC4();
	FUNC1(FUNC6(tsd), MALLOC_TSD_TEST_DATA_INIT,
	    "Initial tsd get should return initialization value");

	p = FUNC3(1);
	FUNC0(p, "Unexpected malloc() failure");

	FUNC7(tsd, d);
	FUNC1(FUNC6(tsd), d,
	    "After tsd set, tsd get should return value that was set");

	d = 0;
	FUNC1(FUNC6(tsd), (int)(uintptr_t)arg,
	    "Resetting local data should have no effect on tsd");

	FUNC5(tsd, &data_cleanup);

	FUNC2(p);
	return NULL;
}