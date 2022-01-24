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
 int HZ ; 
 scalar_t__ cmm_timed_pages_target ; 
 int cmm_timeout_seconds ; 
 int /*<<< orphan*/  cmm_timer ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
	if (cmm_timed_pages_target <= 0 || cmm_timeout_seconds <= 0) {
		if (FUNC2(&cmm_timer))
			FUNC0(&cmm_timer);
		return;
	}
	FUNC1(&cmm_timer, jiffies + cmm_timeout_seconds * HZ);
}