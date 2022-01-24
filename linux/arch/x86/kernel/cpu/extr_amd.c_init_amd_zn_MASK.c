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
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_CPB ; 
 int /*<<< orphan*/  X86_FEATURE_HYPERVISOR ; 
 int /*<<< orphan*/  X86_FEATURE_ZEN ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int node_reclaim_distance ; 
 int /*<<< orphan*/  FUNC1 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct cpuinfo_x86 *c)
{
	FUNC1(c, X86_FEATURE_ZEN);

#ifdef CONFIG_NUMA
	node_reclaim_distance = 32;
#endif

	/*
	 * Fix erratum 1076: CPB feature bit not being set in CPUID.
	 * Always set it, except when running under a hypervisor.
	 */
	if (!FUNC0(c, X86_FEATURE_HYPERVISOR) && !FUNC0(c, X86_FEATURE_CPB))
		FUNC1(c, X86_FEATURE_CPB);
}