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
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nmi_active ; 
 int /*<<< orphan*/  nmi_init_done ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  start_nmi_watchdog ; 

int FUNC3(unsigned int cpu)
{
	if (FUNC0(&nmi_active) == -1) {
		FUNC1("NMI watchdog cannot be enabled or disabled\n");
		return -1;
	}

	/*
	 * watchdog thread could start even before nmi_init is called.
	 * Just Return in that case. Let nmi_init finish the init
	 * process first.
	 */
	if (!nmi_init_done)
		return 0;

	FUNC2(cpu, start_nmi_watchdog, NULL, 1);

	return 0;
}