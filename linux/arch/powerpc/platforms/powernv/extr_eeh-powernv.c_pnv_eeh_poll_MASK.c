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
typedef  scalar_t__ s64 ;

/* Variables and functions */
 scalar_t__ OPAL_HARDWARE ; 
 scalar_t__ SYSTEM_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 scalar_t__ system_state ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static s64 FUNC3(unsigned long id)
{
	s64 rc = OPAL_HARDWARE;

	while (1) {
		rc = FUNC1(id);
		if (rc <= 0)
			break;

		if (system_state < SYSTEM_RUNNING)
			FUNC2(1000 * rc);
		else
			FUNC0(rc);
	}

	return rc;
}