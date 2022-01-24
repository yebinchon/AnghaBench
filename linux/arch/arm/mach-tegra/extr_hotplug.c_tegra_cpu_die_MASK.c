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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  TEGRA_FLUSH_CACHE_LOUIS ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(unsigned int cpu)
{
	if (!&tegra_hotplug_shutdown) {
		FUNC1(1, "hotplug is not yet initialized\n");
		return;
	}

	/* Clean L1 data cache */
	FUNC2(TEGRA_FLUSH_CACHE_LOUIS);

	/* Shut down the current CPU. */
	FUNC3();

	/* Should never return here. */
	FUNC0();
}