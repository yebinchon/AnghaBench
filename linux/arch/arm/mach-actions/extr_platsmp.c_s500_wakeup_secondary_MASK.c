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
 int EINVAL ; 
 scalar_t__ OWL_CPU1_ADDR ; 
 scalar_t__ OWL_CPU1_FLAG ; 
 int /*<<< orphan*/  OWL_CPUx_FLAG_BOOT ; 
 int /*<<< orphan*/  OWL_SPS_PG_CTL_ACK_CPU2 ; 
 int /*<<< orphan*/  OWL_SPS_PG_CTL_ACK_CPU3 ; 
 int /*<<< orphan*/  OWL_SPS_PG_CTL_PWR_CPU2 ; 
 int /*<<< orphan*/  OWL_SPS_PG_CTL_PWR_CPU3 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  secondary_startup ; 
 int /*<<< orphan*/  sps_base_addr ; 
 scalar_t__ timer_base_addr ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(unsigned int cpu)
{
	int ret;

	if (cpu > 3)
		return -EINVAL;

	/* The generic PM domain driver is not available this early. */
	switch (cpu) {
	case 2:
		ret = FUNC3(sps_base_addr,
		                     OWL_SPS_PG_CTL_PWR_CPU2,
				     OWL_SPS_PG_CTL_ACK_CPU2, true);
		if (ret)
			return ret;
		break;
	case 3:
		ret = FUNC3(sps_base_addr,
		                     OWL_SPS_PG_CTL_PWR_CPU3,
				     OWL_SPS_PG_CTL_ACK_CPU3, true);
		if (ret)
			return ret;
		break;
	}

	/* wait for CPUx to run to WFE instruction */
	FUNC4(200);

	FUNC5(FUNC0(secondary_startup),
	       timer_base_addr + OWL_CPU1_ADDR + (cpu - 1) * 4);
	FUNC5(OWL_CPUx_FLAG_BOOT,
	       timer_base_addr + OWL_CPU1_FLAG + (cpu - 1) * 4);

	FUNC1();
	FUNC2();

	return 0;
}