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
 int /*<<< orphan*/  ARM_CPU_PART_CORTEX_A9 ; 
 int /*<<< orphan*/  EXYNOS_AFTR_MAGIC ; 
#define  FW_DO_IDLE_AFTR 129 
#define  FW_DO_IDLE_SLEEP 128 
 int /*<<< orphan*/  OP_TYPE_CLUSTER ; 
 int /*<<< orphan*/  OP_TYPE_CORE ; 
 int /*<<< orphan*/  SMC_CMD_CPU0AFTR ; 
 int /*<<< orphan*/  SMC_CMD_SAVE ; 
 int /*<<< orphan*/  SMC_CMD_SHUTDOWN ; 
 int /*<<< orphan*/  SMC_CMD_SLEEP ; 
 int /*<<< orphan*/  SMC_POWERSTATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exynos_cpu_resume_ns ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  sysram_ns_base_addr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(unsigned long mode)
{
	switch (mode) {
	case FW_DO_IDLE_AFTR:
		if (FUNC4() == ARM_CPU_PART_CORTEX_A9)
			FUNC1();
		FUNC6(FUNC0(exynos_cpu_resume_ns),
			       sysram_ns_base_addr + 0x24);
		FUNC6(EXYNOS_AFTR_MAGIC, sysram_ns_base_addr + 0x20);
		if (FUNC5()) {
			FUNC3();
			FUNC2(SMC_CMD_SAVE, OP_TYPE_CORE,
				   SMC_POWERSTATE_IDLE, 0);
			FUNC2(SMC_CMD_SHUTDOWN, OP_TYPE_CLUSTER,
				   SMC_POWERSTATE_IDLE, 0);
		} else
			FUNC2(SMC_CMD_CPU0AFTR, 0, 0, 0);
		break;
	case FW_DO_IDLE_SLEEP:
		FUNC2(SMC_CMD_SLEEP, 0, 0, 0);
	}
	return 0;
}