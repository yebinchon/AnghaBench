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
typedef  size_t u32 ;
struct op_counter_config {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  debug_bus_control; int /*<<< orphan*/  group_control; } ;
struct TYPE_3__ {int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUM_INTERVAL_CYC ; 
 scalar_t__ SPU_PROFILING_CYCLES ; 
 scalar_t__ SPU_PROFILING_EVENTS ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ctr_enabled ; 
 int /*<<< orphan*/  debug_bus_control ; 
 int /*<<< orphan*/  group_control ; 
 int num_counters ; 
 int /*<<< orphan*/  pm_interval ; 
 TYPE_2__ pm_regs ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* pm_signal ; 
 int /*<<< orphan*/  pm_start_stop ; 
 scalar_t__ profiling_mode ; 
 size_t FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 

__attribute__((used)) static int FUNC8(struct op_counter_config *cntr)
{
	u32 cpu = FUNC6();
	u32 num_enabled = 0;
	int i;
	int ret;

	/* Cycle based SPU profiling does not use the performance
	 * counters.  The trace array is configured to collect
	 * the data.
	 */
	if (profiling_mode == SPU_PROFILING_CYCLES)
		return 0;

	/* There is one performance monitor per processor chip (i.e. node),
	 * so we only need to perform this function once per node.
	 */
	if (FUNC3(cpu))
		return 0;

	/* Stop all counters */
	FUNC1(cpu);
	FUNC2(cpu);

	FUNC4(cpu, pm_start_stop, 0);
	FUNC4(cpu, group_control, pm_regs.group_control);
	FUNC4(cpu, debug_bus_control, pm_regs.debug_bus_control);
	FUNC7(cpu);

	for (i = 0; i < num_counters; ++i) {
		if (ctr_enabled & (1 << i)) {
			pm_signal[num_enabled].cpu = FUNC0(cpu);
			num_enabled++;
		}
	}

	/*
	 * The pm_rtas_activate_signals will return -EIO if the FW
	 * call failed.
	 */
	if (profiling_mode == SPU_PROFILING_EVENTS) {
		/* For SPU event profiling also need to setup the
		 * pm interval timer
		 */
		ret = FUNC5(FUNC0(cpu),
					       num_enabled+2);
		/* store PC from debug bus to Trace buffer as often
		 * as possible (every 10 cycles)
		 */
		FUNC4(cpu, pm_interval, NUM_INTERVAL_CYC);
		return ret;
	} else
		return FUNC5(FUNC0(cpu),
						num_enabled);
}