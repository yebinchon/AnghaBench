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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stop_nmi_watchdog ; 

void FUNC3(unsigned int cpu)
{
	if (FUNC0(&nmi_active) == -1)
		FUNC1("NMI watchdog cannot be enabled or disabled\n");
	else
		FUNC2(cpu, stop_nmi_watchdog, NULL, 1);
}