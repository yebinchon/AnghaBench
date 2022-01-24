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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ timebase ; 
 int /*<<< orphan*/  timebase_lock ; 

void FUNC9(void)
{
	unsigned long flags;

	FUNC6(flags);
	FUNC4();
	FUNC0(&timebase_lock);
	FUNC7(FUNC8("freeze-time-base"), 0, 1, NULL);
	timebase = FUNC3();
	FUNC1(&timebase_lock);

	while (timebase)
		FUNC2();
	FUNC7(FUNC8("thaw-time-base"), 0, 1, NULL);
	FUNC5(flags);
}