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
struct cpuinfo_x86 {int cpu_index; } ;

/* Variables and functions */
 scalar_t__ BAD_APICID ; 
 int /*<<< orphan*/  cpu_llc_id ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  snc_cpu ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_x86*,struct cpuinfo_x86*) ; 
 int FUNC2 (struct cpuinfo_x86*,struct cpuinfo_x86*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct cpuinfo_x86 *c, struct cpuinfo_x86 *o)
{
	int cpu1 = c->cpu_index, cpu2 = o->cpu_index;

	/* Do not match if we do not have a valid APICID for cpu: */
	if (FUNC0(cpu_llc_id, cpu1) == BAD_APICID)
		return false;

	/* Do not match if LLC id does not match: */
	if (FUNC0(cpu_llc_id, cpu1) != FUNC0(cpu_llc_id, cpu2))
		return false;

	/*
	 * Allow the SNC topology without warning. Return of false
	 * means 'c' does not share the LLC of 'o'. This will be
	 * reflected to userspace.
	 */
	if (!FUNC1(c, o) && FUNC3(snc_cpu))
		return false;

	return FUNC2(c, o, "llc");
}