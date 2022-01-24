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
 long H_P2 ; 
 long H_SUCCESS ; 
 long FUNC1 () ; 
 unsigned int FUNC2 (long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 

void FUNC6(void)
{
	long rc;
	unsigned int delay, total_delay = 0;

	while (1) {
		rc = FUNC1();
		if (!FUNC0(rc)) {
			if (rc == H_P2) {
				FUNC4("Relocation on exceptions not"
					" supported\n");
			} else if (rc != H_SUCCESS) {
				FUNC5("Unable to enable relocation"
					" on exceptions: %ld\n", rc);
			}
			break;
		}

		delay = FUNC2(rc);
		total_delay += delay;
		if (total_delay > 1000) {
			FUNC5("Warning: Giving up waiting to enable "
				"relocation on exceptions (%u msec)!\n",
				total_delay);
			return;
		}

		FUNC3(delay);
	}
}