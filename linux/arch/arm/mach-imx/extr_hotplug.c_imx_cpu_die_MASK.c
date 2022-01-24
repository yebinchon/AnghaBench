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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 

void FUNC3(unsigned int cpu)
{
	FUNC1();
	/*
	 * We use the cpu jumping argument register to sync with
	 * imx_cpu_kill() which is running on cpu0 and waiting for
	 * the register being cleared to kill the cpu.
	 */
	FUNC2(cpu, ~0);

	while (1)
		FUNC0();
}