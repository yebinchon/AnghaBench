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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int SYS_9XX_CPU_NONCOHERENT_MODE ; 
 int SYS_9XX_CPU_RESET ; 
 int SYS_CORE_DFS_DIS_CTRL ; 
 int SYS_CPU_NONCOHERENT_MODE ; 
 int SYS_CPU_RESET ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(uint64_t sysbase, int node, int core)
{
	uint32_t coremask, value;
	int count, resetreg;

	coremask = (1 << core);

	/* Enable CPU clock in case of 8xx/3xx */
	if (!FUNC1()) {
		value = FUNC2(sysbase, SYS_CORE_DFS_DIS_CTRL);
		value &= ~coremask;
		FUNC3(sysbase, SYS_CORE_DFS_DIS_CTRL, value);
	}

	/* On 9XX, mark coherent first */
	if (FUNC0()) {
		value = FUNC2(sysbase, SYS_9XX_CPU_NONCOHERENT_MODE);
		value &= ~coremask;
		FUNC3(sysbase, SYS_9XX_CPU_NONCOHERENT_MODE, value);
	}

	/* Remove CPU Reset */
	resetreg = FUNC0() ? SYS_9XX_CPU_RESET : SYS_CPU_RESET;
	value = FUNC2(sysbase, resetreg);
	value &= ~coremask;
	FUNC3(sysbase, resetreg, value);

	/* We are done on 9XX */
	if (FUNC0())
		return 1;

	/* Poll for CPU to mark itself coherent on other type of XLP */
	count = 100000;
	do {
		value = FUNC2(sysbase, SYS_CPU_NONCOHERENT_MODE);
	} while ((value & coremask) != 0 && --count > 0);

	return count != 0;
}