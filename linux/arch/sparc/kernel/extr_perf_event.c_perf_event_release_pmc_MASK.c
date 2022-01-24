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
 int /*<<< orphan*/  active_events ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nmi_active ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pmc_grab_mutex ; 
 int /*<<< orphan*/  start_nmi_watchdog ; 

__attribute__((used)) static void FUNC4(void)
{
	if (FUNC0(&active_events, &pmc_grab_mutex)) {
		if (FUNC1(&nmi_active) == 0)
			FUNC3(start_nmi_watchdog, NULL, 1);
		FUNC2(&pmc_grab_mutex);
	}
}