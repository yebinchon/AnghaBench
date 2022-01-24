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
struct cpu_cacheinfo {unsigned int num_leaves; int cpu_map_populated; struct cacheinfo* info_list; } ;
struct cacheinfo {int dummy; } ;
struct _cpuid4_info_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int,struct _cpuid4_info_regs*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct _cpuid4_info_regs*) ; 
 unsigned int FUNC2 (unsigned int,struct _cpuid4_info_regs*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,struct _cpuid4_info_regs*) ; 
 struct cpu_cacheinfo* FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(unsigned int cpu)
{
	unsigned int idx, ret;
	struct cpu_cacheinfo *this_cpu_ci = FUNC4(cpu);
	struct cacheinfo *this_leaf = this_cpu_ci->info_list;
	struct _cpuid4_info_regs id4_regs = {};

	for (idx = 0; idx < this_cpu_ci->num_leaves; idx++) {
		ret = FUNC2(idx, &id4_regs);
		if (ret)
			return ret;
		FUNC3(cpu, &id4_regs);
		FUNC1(this_leaf++, &id4_regs);
		FUNC0(cpu, idx, &id4_regs);
	}
	this_cpu_ci->cpu_map_populated = true;

	return 0;
}