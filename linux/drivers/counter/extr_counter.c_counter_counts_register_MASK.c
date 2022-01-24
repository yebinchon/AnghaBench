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
struct TYPE_2__ {char const* name; } ;
struct counter_device_attr_group {int /*<<< orphan*/  attr_list; TYPE_1__ attr_group; } ;
struct counter_device {size_t num_counts; struct counter_count* counts; } ;
struct counter_count {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct counter_device_attr_group* const,struct counter_device const* const,struct counter_count*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct counter_device_attr_group* const,struct counter_device const* const,struct counter_count*,char const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(
	struct counter_device_attr_group *const groups_list,
	const struct counter_device *const counter)
{
	size_t i;
	struct counter_count *count;
	const char *name;
	int err;

	/* Register each Count */
	for (i = 0; i < counter->num_counts; i++) {
		count = counter->counts + i;

		/* Generate Count attribute directory name */
		name = FUNC3(GFP_KERNEL, "count%d", count->id);
		if (!name) {
			err = -ENOMEM;
			goto err_free_attr_groups;
		}
		groups_list[i].attr_group.name = name;

		/* Register the Synapses associated with each Count */
		err = FUNC2(groups_list + i, counter, count,
						name);
		if (err)
			goto err_free_attr_groups;

		/* Create all attributes associated with Count */
		err = FUNC0(groups_list + i, counter,
						      count);
		if (err)
			goto err_free_attr_groups;
	}

	return 0;

err_free_attr_groups:
	do {
		FUNC4(groups_list[i].attr_group.name);
		FUNC1(&groups_list[i].attr_list);
	} while (i--);
	return err;
}