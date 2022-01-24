#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cpufreq_policy {int dummy; } ;
struct TYPE_4__ {unsigned int driver_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; int /*<<< orphan*/  ddr_clk; int /*<<< orphan*/  powersave_clk; int /*<<< orphan*/  cpu_clk; } ;

/* Variables and functions */
 unsigned long CPU_SW_INT_BLK ; 
#define  STATE_CPU_FREQ 129 
#define  STATE_DDR_FREQ 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* kirkwood_freq_table ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__ priv ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cpufreq_policy *policy,
			    unsigned int index)
{
	unsigned int state = kirkwood_freq_table[index].driver_data;
	unsigned long reg;

	FUNC2();

	/* Disable interrupts to the CPU */
	reg = FUNC4(priv.base);
	reg |= CPU_SW_INT_BLK;
	FUNC5(reg, priv.base);

	switch (state) {
	case STATE_CPU_FREQ:
		FUNC0(priv.powersave_clk, priv.cpu_clk);
		break;
	case STATE_DDR_FREQ:
		FUNC0(priv.powersave_clk, priv.ddr_clk);
		break;
	}

	/* Wait-for-Interrupt, while the hardware changes frequency */
	FUNC1();

	/* Enable interrupts to the CPU */
	reg = FUNC4(priv.base);
	reg &= ~CPU_SW_INT_BLK;
	FUNC5(reg, priv.base);

	FUNC3();

	return 0;
}