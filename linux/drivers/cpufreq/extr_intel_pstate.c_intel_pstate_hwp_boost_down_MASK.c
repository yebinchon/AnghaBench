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
struct TYPE_2__ {scalar_t__ time; } ;
struct cpudata {TYPE_1__ sample; scalar_t__ last_update; scalar_t__ hwp_boost_min; int /*<<< orphan*/  hwp_req_cached; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_HWP_REQUEST ; 
 scalar_t__ hwp_boost_hold_time_ns ; 
 int FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct cpudata *cpu)
{
	if (cpu->hwp_boost_min) {
		bool expired;

		/* Check if we are idle for hold time to boost down */
		expired = FUNC0(cpu->sample.time, cpu->last_update +
				       hwp_boost_hold_time_ns);
		if (expired) {
			FUNC1(MSR_HWP_REQUEST, cpu->hwp_req_cached);
			cpu->hwp_boost_min = 0;
		}
	}
	cpu->last_update = cpu->sample.time;
}