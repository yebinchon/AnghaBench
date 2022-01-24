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
struct device_node {int dummy; } ;
struct cpu_cacheinfo {struct cacheinfo* info_list; } ;
struct cacheinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_TYPE_DATA ; 
 int /*<<< orphan*/  CACHE_TYPE_INST ; 
 int /*<<< orphan*/  CACHE_TYPE_UNIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ ,int) ; 
 struct cpu_cacheinfo* FUNC1 (unsigned int) ; 
 struct device_node* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*) ; 
 struct device_node* FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*) ; 
 scalar_t__ FUNC7 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC8(unsigned int cpu)
{
	struct cpu_cacheinfo *this_cpu_ci = FUNC1(cpu);
	struct cacheinfo *this_leaf = this_cpu_ci->info_list;
	struct device_node *np = FUNC2(cpu);
	struct device_node *prev = NULL;
	int levels = 1, level = 1;

	if (FUNC6(np, "cache-size"))
		FUNC0(this_leaf++, np, CACHE_TYPE_UNIFIED, level);
	if (FUNC6(np, "i-cache-size"))
		FUNC0(this_leaf++, np, CACHE_TYPE_INST, level);
	if (FUNC6(np, "d-cache-size"))
		FUNC0(this_leaf++, np, CACHE_TYPE_DATA, level);

	prev = np;
	while ((np = FUNC4(np))) {
		FUNC5(prev);
		prev = np;
		if (!FUNC3(np, "cache"))
			break;
		if (FUNC7(np, "cache-level", &level))
			break;
		if (level <= levels)
			break;
		if (FUNC6(np, "cache-size"))
			FUNC0(this_leaf++, np, CACHE_TYPE_UNIFIED, level);
		if (FUNC6(np, "i-cache-size"))
			FUNC0(this_leaf++, np, CACHE_TYPE_INST, level);
		if (FUNC6(np, "d-cache-size"))
			FUNC0(this_leaf++, np, CACHE_TYPE_DATA, level);
		levels = level;
	}
	FUNC5(np);

	return 0;
}