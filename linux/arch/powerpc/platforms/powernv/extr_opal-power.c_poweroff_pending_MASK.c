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
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int OPAL_SUCCESS ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static bool FUNC3(void)
{
	int rc;
	__be64 opal_dpo_timeout;

	/* Check for DPO event */
	rc = FUNC1(&opal_dpo_timeout);
	if (rc == OPAL_SUCCESS) {
		FUNC2("Existing DPO event detected.\n");
		return true;
	}

	/* Check for EPOW event */
	if (FUNC0()) {
		FUNC2("Existing EPOW event detected.\n");
		return true;
	}

	return false;
}