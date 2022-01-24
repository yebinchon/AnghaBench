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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 
 scalar_t__ prcm_base ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu, unsigned int cluster,
				      bool enable)
{
	u32 reg;

	/* control sequence from Allwinner A80 user manual v1.2 PRCM section */
	reg = FUNC2(prcm_base + FUNC0(cluster, cpu));
	if (enable) {
		if (reg == 0x00) {
			FUNC1("power clamp for cluster %u cpu %u already open\n",
				 cluster, cpu);
			return 0;
		}

		FUNC4(0xff, prcm_base + FUNC0(cluster, cpu));
		FUNC3(10);
		FUNC4(0xfe, prcm_base + FUNC0(cluster, cpu));
		FUNC3(10);
		FUNC4(0xf8, prcm_base + FUNC0(cluster, cpu));
		FUNC3(10);
		FUNC4(0xf0, prcm_base + FUNC0(cluster, cpu));
		FUNC3(10);
		FUNC4(0x00, prcm_base + FUNC0(cluster, cpu));
		FUNC3(10);
	} else {
		FUNC4(0xff, prcm_base + FUNC0(cluster, cpu));
		FUNC3(10);
	}

	return 0;
}