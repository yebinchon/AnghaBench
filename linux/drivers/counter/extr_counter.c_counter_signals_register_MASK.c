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
struct counter_signal {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {char const* name; } ;
struct counter_device_attr_group {int /*<<< orphan*/  attr_list; TYPE_1__ attr_group; } ;
struct counter_device {size_t num_signals; struct counter_signal* signals; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct counter_device_attr_group* const,struct counter_device const* const,struct counter_signal*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(
	struct counter_device_attr_group *const groups_list,
	const struct counter_device *const counter)
{
	const size_t num_signals = counter->num_signals;
	size_t i;
	struct counter_signal *signal;
	const char *name;
	int err;

	/* Register each Signal */
	for (i = 0; i < num_signals; i++) {
		signal = counter->signals + i;

		/* Generate Signal attribute directory name */
		name = FUNC2(GFP_KERNEL, "signal%d", signal->id);
		if (!name) {
			err = -ENOMEM;
			goto err_free_attr_groups;
		}
		groups_list[i].attr_group.name = name;

		/* Create all attributes associated with Signal */
		err = FUNC1(groups_list + i, counter,
						       signal);
		if (err)
			goto err_free_attr_groups;
	}

	return 0;

err_free_attr_groups:
	do {
		FUNC3(groups_list[i].attr_group.name);
		FUNC0(&groups_list[i].attr_list);
	} while (i--);
	return err;
}