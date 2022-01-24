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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ OPAL_BUSY ; 
 int /*<<< orphan*/  OPAL_BUSY_DELAY_MS ; 
 int /*<<< orphan*/  OPAL_XIVE_ANY_CHIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

u32 FUNC2(void)
{
	s64 rc;

	for (;;) {
		rc = FUNC1(OPAL_XIVE_ANY_CHIP);
		if (rc != OPAL_BUSY)
			break;
		FUNC0(OPAL_BUSY_DELAY_MS);
	}
	if (rc < 0)
		return 0;
	return rc;
}