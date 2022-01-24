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
union cache_topology {TYPE_1__* ci; int /*<<< orphan*/  raw; } ;
struct cpu_cacheinfo {unsigned int num_levels; unsigned int num_leaves; struct cacheinfo* info_list; } ;
struct cacheinfo {int dummy; } ;
typedef  enum cache_type { ____Placeholder_cache_type } cache_type ;
struct TYPE_2__ {scalar_t__ scope; } ;

/* Variables and functions */
 scalar_t__ CACHE_SCOPE_PRIVATE ; 
 int CACHE_TYPE_DATA ; 
 int CACHE_TYPE_INST ; 
 int CACHE_TYPE_SEPARATE ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EXTRACT_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,unsigned int) ; 
 struct cpu_cacheinfo* FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(unsigned int cpu)
{
	struct cpu_cacheinfo *this_cpu_ci = FUNC3(cpu);
	struct cacheinfo *this_leaf = this_cpu_ci->info_list;
	unsigned int level, idx, pvt;
	union cache_topology ct;
	enum cache_type ctype;

	if (!FUNC4(34))
		return -EOPNOTSUPP;
	ct.raw = FUNC1(EXTRACT_TOPOLOGY, 0, 0);
	for (idx = 0, level = 0; level < this_cpu_ci->num_levels &&
	     idx < this_cpu_ci->num_leaves; idx++, level++) {
		if (!this_leaf)
			return -EINVAL;
		pvt = (ct.ci[level].scope == CACHE_SCOPE_PRIVATE) ? 1 : 0;
		ctype = FUNC2(&ct.ci[0], level);
		if (ctype == CACHE_TYPE_SEPARATE) {
			FUNC0(this_leaf++, pvt, CACHE_TYPE_DATA, level, cpu);
			FUNC0(this_leaf++, pvt, CACHE_TYPE_INST, level, cpu);
		} else {
			FUNC0(this_leaf++, pvt, ctype, level, cpu);
		}
	}
	return 0;
}