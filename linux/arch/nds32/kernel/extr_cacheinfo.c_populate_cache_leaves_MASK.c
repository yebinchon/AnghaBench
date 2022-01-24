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
struct cpu_cacheinfo {unsigned int num_levels; unsigned int num_leaves; struct cacheinfo* info_list; } ;
struct cacheinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_TYPE_DATA ; 
 int /*<<< orphan*/  CACHE_TYPE_INST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 struct cpu_cacheinfo* FUNC1 (unsigned int) ; 

int FUNC2(unsigned int cpu)
{
	unsigned int level, idx;
	struct cpu_cacheinfo *this_cpu_ci = FUNC1(cpu);
	struct cacheinfo *this_leaf = this_cpu_ci->info_list;

	for (idx = 0, level = 1; level <= this_cpu_ci->num_levels &&
	     idx < this_cpu_ci->num_leaves; idx++, level++) {
		FUNC0(this_leaf++, CACHE_TYPE_DATA, level);
		FUNC0(this_leaf++, CACHE_TYPE_INST, level);
	}
	return 0;
}