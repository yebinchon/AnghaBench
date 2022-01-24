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
struct teo_cpu {scalar_t__ sleep_length_ns; scalar_t__ time_span_ns; } ;
struct cpuidle_device {int last_state_idx; int poll_time_limit; int /*<<< orphan*/  cpu; } ;

/* Variables and functions */
 scalar_t__ TICK_NSEC ; 
 scalar_t__ FUNC0 () ; 
 struct teo_cpu* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  teo_cpus ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct cpuidle_device *dev, int state)
{
	struct teo_cpu *cpu_data = FUNC1(&teo_cpus, dev->cpu);

	dev->last_state_idx = state;
	/*
	 * If the wakeup was not "natural", but triggered by one of the safety
	 * nets, assume that the CPU might have been idle for the entire sleep
	 * length time.
	 */
	if (dev->poll_time_limit ||
	    (FUNC2() && cpu_data->sleep_length_ns > TICK_NSEC)) {
		dev->poll_time_limit = false;
		cpu_data->time_span_ns = cpu_data->sleep_length_ns;
	} else {
		cpu_data->time_span_ns = FUNC0() - cpu_data->time_span_ns;
	}
}