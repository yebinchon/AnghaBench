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
 long OPAL_BUSY ; 
 long OPAL_BUSY_EVENT ; 
 int /*<<< orphan*/  OPAL_DUMP_REGION_LOG_BUF ; 
 int /*<<< orphan*/  OPAL_UNREGISTER_DUMP_REGION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 long FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	long rc = OPAL_BUSY;

	FUNC2();

	/*
	 * Then sync with OPAL which ensure anything that can
	 * potentially write to our memory has completed such
	 * as an ongoing dump retrieval
	 */
	while (rc == OPAL_BUSY || rc == OPAL_BUSY_EVENT) {
		rc = FUNC4();
		if (rc == OPAL_BUSY)
			FUNC3(NULL);
		else
			FUNC0(10);
	}

	/* Unregister memory dump region */
	if (FUNC1(OPAL_UNREGISTER_DUMP_REGION))
		FUNC5(OPAL_DUMP_REGION_LOG_BUF);
}