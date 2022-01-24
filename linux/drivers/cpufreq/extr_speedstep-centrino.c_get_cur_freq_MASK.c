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
 int /*<<< orphan*/  MSR_IA32_PERF_CTL ; 
 int /*<<< orphan*/  MSR_IA32_PERF_STATUS ; 
 unsigned int FUNC0 (unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ,unsigned int*,unsigned int*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static unsigned int FUNC3(unsigned int cpu)
{
	unsigned l, h;
	unsigned clock_freq;

	FUNC1(cpu, MSR_IA32_PERF_STATUS, &l, &h);
	clock_freq = FUNC0(l, cpu, 0);

	if (FUNC2(clock_freq == 0)) {
		/*
		 * On some CPUs, we can see transient MSR values (which are
		 * not present in _PSS), while CPU is doing some automatic
		 * P-state transition (like TM2). Get the last freq set 
		 * in PERF_CTL.
		 */
		FUNC1(cpu, MSR_IA32_PERF_CTL, &l, &h);
		clock_freq = FUNC0(l, cpu, 1);
	}
	return clock_freq;
}