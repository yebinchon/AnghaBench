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
struct cpuinfo_x86 {int extended_cpuid_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_TOPOEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (struct cpuinfo_x86*) ; 
 int num_cache_leaves ; 

void FUNC3(struct cpuinfo_x86 *c)
{

	if (FUNC0(X86_FEATURE_TOPOEXT)) {
		num_cache_leaves = FUNC2(c);
	} else if (c->extended_cpuid_level >= 0x80000006) {
		if (FUNC1(0x80000006) & 0xf000)
			num_cache_leaves = 4;
		else
			num_cache_leaves = 3;
	}
}