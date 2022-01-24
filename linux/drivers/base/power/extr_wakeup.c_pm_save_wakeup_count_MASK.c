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
 int events_check_enabled ; 
 int /*<<< orphan*/  events_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int saved_count ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*) ; 

bool FUNC3(unsigned int count)
{
	unsigned int cnt, inpr;
	unsigned long flags;

	events_check_enabled = false;
	FUNC0(&events_lock, flags);
	FUNC2(&cnt, &inpr);
	if (cnt == count && inpr == 0) {
		saved_count = count;
		events_check_enabled = true;
	}
	FUNC1(&events_lock, flags);
	return events_check_enabled;
}