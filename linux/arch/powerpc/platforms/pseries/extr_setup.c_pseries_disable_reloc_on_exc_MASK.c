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
 int /*<<< orphan*/  FUNC0 (long) ; 
 long H_SUCCESS ; 
 long FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,long) ; 

void FUNC5(void)
{
	long rc;

	while (1) {
		rc = FUNC1();
		if (!FUNC0(rc))
			break;
		FUNC3(FUNC2(rc));
	}
	if (rc != H_SUCCESS)
		FUNC4("Warning: Failed to disable relocation on exceptions: %ld\n",
			rc);
}