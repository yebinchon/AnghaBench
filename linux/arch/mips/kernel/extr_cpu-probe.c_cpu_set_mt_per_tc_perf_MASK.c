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
struct cpuinfo_mips {int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPS_CPU_MT_PER_TC_PERF_COUNTERS ; 
 int MTI_CONF7_PTC ; 
 int FUNC0 () ; 

__attribute__((used)) static inline void FUNC1(struct cpuinfo_mips *c)
{
	if (FUNC0() & MTI_CONF7_PTC)
		c->options |= MIPS_CPU_MT_PER_TC_PERF_COUNTERS;
}