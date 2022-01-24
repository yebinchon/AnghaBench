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
struct pmf_function {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMF_FLAGS_ON_DEMAND ; 
 struct pmf_function* FUNC0 (struct device_node*,char const*,int /*<<< orphan*/ ) ; 
 struct pmf_function* FUNC1 (struct pmf_function*) ; 
 int /*<<< orphan*/  pmf_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

struct pmf_function *FUNC4(struct device_node *target,
				       const char *name)
{
	struct pmf_function *func;
	unsigned long flags;

	FUNC2(&pmf_lock, flags);
	func = FUNC0(target, name, PMF_FLAGS_ON_DEMAND);
	if (func)
		func = FUNC1(func);
	FUNC3(&pmf_lock, flags);
	return func;
}