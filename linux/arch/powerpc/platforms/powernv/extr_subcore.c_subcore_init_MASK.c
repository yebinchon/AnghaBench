#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PVR_POWER8 ; 
 unsigned int PVR_POWER8E ; 
 unsigned int PVR_POWER8NVL ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPRN_PVR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_offline_mask ; 
 TYPE_1__ cpu_subsys ; 
 int /*<<< orphan*/  dev_attr_subcores_per_core ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int setup_max_cpus ; 
 int threads_per_core ; 

__attribute__((used)) static int FUNC6(void)
{
	unsigned pvr_ver;

	pvr_ver = FUNC1(FUNC4(SPRN_PVR));

	if (pvr_ver != PVR_POWER8 &&
	    pvr_ver != PVR_POWER8E &&
	    pvr_ver != PVR_POWER8NVL)
		return 0;

	/*
	 * We need all threads in a core to be present to split/unsplit so
         * continue only if max_cpus are aligned to threads_per_core.
	 */
	if (setup_max_cpus % threads_per_core)
		return 0;

	FUNC0(!FUNC2(&cpu_offline_mask, GFP_KERNEL));

	FUNC5(1);

	return FUNC3(cpu_subsys.dev_root,
				  &dev_attr_subcores_per_core);
}