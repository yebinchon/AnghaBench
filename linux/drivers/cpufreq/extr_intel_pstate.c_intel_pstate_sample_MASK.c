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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ mperf; scalar_t__ tsc; scalar_t__ aperf; scalar_t__ time; } ;
struct cpudata {scalar_t__ prev_mperf; scalar_t__ prev_tsc; scalar_t__ last_sample_time; scalar_t__ prev_aperf; TYPE_1__ sample; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_APERF ; 
 int /*<<< orphan*/  MSR_IA32_MPERF ; 
 int /*<<< orphan*/  FUNC0 (struct cpudata*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static inline bool FUNC5(struct cpudata *cpu, u64 time)
{
	u64 aperf, mperf;
	unsigned long flags;
	u64 tsc;

	FUNC2(flags);
	FUNC3(MSR_IA32_APERF, aperf);
	FUNC3(MSR_IA32_MPERF, mperf);
	tsc = FUNC4();
	if (cpu->prev_mperf == mperf || cpu->prev_tsc == tsc) {
		FUNC1(flags);
		return false;
	}
	FUNC1(flags);

	cpu->last_sample_time = cpu->sample.time;
	cpu->sample.time = time;
	cpu->sample.aperf = aperf;
	cpu->sample.mperf = mperf;
	cpu->sample.tsc =  tsc;
	cpu->sample.aperf -= cpu->prev_aperf;
	cpu->sample.mperf -= cpu->prev_mperf;
	cpu->sample.tsc -= cpu->prev_tsc;

	cpu->prev_aperf = aperf;
	cpu->prev_mperf = mperf;
	cpu->prev_tsc = tsc;
	/*
	 * First time this function is invoked in a given cycle, all of the
	 * previous sample data fields are equal to zero or stale and they must
	 * be populated with meaningful numbers for things to work, so assume
	 * that sample.time will always be reset before setting the utilization
	 * update hook and make the caller skip the sample then.
	 */
	if (cpu->last_sample_time) {
		FUNC0(cpu);
		return true;
	}
	return false;
}