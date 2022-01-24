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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ XIVE_INVALID_VP ; 
 int /*<<< orphan*/  nr_cpu_ids ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ xive_pool_vps ; 

__attribute__((used)) static void FUNC4(void)
{
	/* Allocate a pool big enough */
	FUNC1("XIVE: Allocating VP block for pool size %u\n", nr_cpu_ids);

	xive_pool_vps = FUNC3(nr_cpu_ids);
	if (FUNC0(xive_pool_vps == XIVE_INVALID_VP))
		FUNC2("XIVE: Failed to allocate pool VP, KVM might not function\n");

	FUNC1("XIVE: Pool VPs allocated at 0x%x for %u max CPUs\n",
		 xive_pool_vps, nr_cpu_ids);
}