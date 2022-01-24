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
struct kobject {int dummy; } ;
struct bus_type {int dummy; } ;
struct attribute_group {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct bus_type*,struct attribute_group const**,struct kobject*) ; 
 struct kobject* FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct bus_type *subsys,
			    const struct attribute_group **groups)
{
	struct kobject *virtual_dir;

	virtual_dir = FUNC1(NULL);
	if (!virtual_dir)
		return -ENOMEM;

	return FUNC0(subsys, groups, virtual_dir);
}