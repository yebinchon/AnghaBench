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
union cache_topology {int /*<<< orphan*/ * ci; int /*<<< orphan*/  raw; } ;
struct cpu_cacheinfo {unsigned int num_levels; unsigned int num_leaves; } ;
typedef  enum cache_type { ____Placeholder_cache_type } cache_type ;

/* Variables and functions */
 unsigned int CACHE_MAX_LEVEL ; 
 int CACHE_TYPE_NOCACHE ; 
 int CACHE_TYPE_SEPARATE ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  EXTRACT_TOPOLOGY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 struct cpu_cacheinfo* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(unsigned int cpu)
{
	struct cpu_cacheinfo *this_cpu_ci = FUNC2(cpu);
	unsigned int level = 0, leaves = 0;
	union cache_topology ct;
	enum cache_type ctype;

	if (!FUNC3(34))
		return -EOPNOTSUPP;
	if (!this_cpu_ci)
		return -EINVAL;
	ct.raw = FUNC0(EXTRACT_TOPOLOGY, 0, 0);
	do {
		ctype = FUNC1(&ct.ci[0], level);
		if (ctype == CACHE_TYPE_NOCACHE)
			break;
		/* Separate instruction and data caches */
		leaves += (ctype == CACHE_TYPE_SEPARATE) ? 2 : 1;
	} while (++level < CACHE_MAX_LEVEL);
	this_cpu_ci->num_levels = level;
	this_cpu_ci->num_leaves = leaves;
	return 0;
}