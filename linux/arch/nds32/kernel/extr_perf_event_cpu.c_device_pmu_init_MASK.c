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
struct nds32_pmu {char* name; int /*<<< orphan*/  set_event_filter; int /*<<< orphan*/  num_events; int /*<<< orphan*/  map_event; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nds32_pmu*) ; 
 int /*<<< orphan*/  nds32_pmu_set_event_filter ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  nds32_spav3_map_event ; 

__attribute__((used)) static int FUNC2(struct nds32_pmu *cpu_pmu)
{
	FUNC0(cpu_pmu);
	/*
	 * This name should be devive-specific name, whatever you like :)
	 * I think "PMU" will be a good generic name.
	 */
	cpu_pmu->name = "nds32v3-pmu";
	cpu_pmu->map_event = nds32_spav3_map_event;
	cpu_pmu->num_events = FUNC1();
	cpu_pmu->set_event_filter = nds32_pmu_set_event_filter;
	return 0;
}