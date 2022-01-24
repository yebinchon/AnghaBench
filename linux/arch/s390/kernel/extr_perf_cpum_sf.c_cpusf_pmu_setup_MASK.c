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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  num_events ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

__attribute__((used)) static int FUNC4(unsigned int cpu, int flags)
{
	/* Ignore the notification if no events are scheduled on the PMU.
	 * This might be racy...
	 */
	if (!FUNC0(&num_events))
		return 0;

	FUNC1();
	FUNC3(&flags);
	FUNC2();
	return 0;
}