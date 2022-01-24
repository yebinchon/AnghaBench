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
struct cpu_cacheinfo {int num_levels; int num_leaves; } ;

/* Variables and functions */
 struct cpu_cacheinfo* FUNC0 (unsigned int) ; 
 struct device_node* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 scalar_t__ FUNC5 (struct device_node*,char*) ; 
 scalar_t__ FUNC6 (struct device_node*,char*,int*) ; 

__attribute__((used)) static int FUNC7(unsigned int cpu)
{
	struct cpu_cacheinfo *this_cpu_ci = FUNC0(cpu);
	struct device_node *np = FUNC1(cpu);
	struct device_node *prev = NULL;
	int levels = 0, leaves = 0, level;

	if (FUNC5(np, "cache-size"))
		++leaves;
	if (FUNC5(np, "i-cache-size"))
		++leaves;
	if (FUNC5(np, "d-cache-size"))
		++leaves;
	if (leaves > 0)
		levels = 1;

	prev = np;
	while ((np = FUNC3(np))) {
		FUNC4(prev);
		prev = np;
		if (!FUNC2(np, "cache"))
			break;
		if (FUNC6(np, "cache-level", &level))
			break;
		if (level <= levels)
			break;
		if (FUNC5(np, "cache-size"))
			++leaves;
		if (FUNC5(np, "i-cache-size"))
			++leaves;
		if (FUNC5(np, "d-cache-size"))
			++leaves;
		levels = level;
	}

	FUNC4(np);
	this_cpu_ci->num_levels = levels;
	this_cpu_ci->num_leaves = leaves;

	return 0;
}