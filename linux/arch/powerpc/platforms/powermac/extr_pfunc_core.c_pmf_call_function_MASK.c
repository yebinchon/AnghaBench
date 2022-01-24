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
struct pmf_args {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct pmf_function*,struct pmf_args*) ; 
 struct pmf_function* FUNC1 (struct device_node*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct pmf_function*) ; 

int FUNC3(struct device_node *target, const char *name,
		      struct pmf_args *args)
{
	struct pmf_function *func = FUNC1(target, name);
	int rc;

	if (func == NULL)
		return -ENODEV;

	rc = FUNC0(func, args);
	FUNC2(func);
	return rc;
}