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
struct cpuinfo_x86 {unsigned int initial_apicid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  SMT_LEVEL ; 
 int /*<<< orphan*/  X86_FEATURE_XTOPOLOGY ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int FUNC2 (struct cpuinfo_x86*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smp_num_siblings ; 

int FUNC4(struct cpuinfo_x86 *c)
{
#ifdef CONFIG_SMP
	unsigned int eax, ebx, ecx, edx;
	int leaf;

	leaf = detect_extended_topology_leaf(c);
	if (leaf < 0)
		return -1;

	set_cpu_cap(c, X86_FEATURE_XTOPOLOGY);

	cpuid_count(leaf, SMT_LEVEL, &eax, &ebx, &ecx, &edx);
	/*
	 * initial apic id, which also represents 32-bit extended x2apic id.
	 */
	c->initial_apicid = edx;
	smp_num_siblings = LEVEL_MAX_SIBLINGS(ebx);
#endif
	return 0;
}