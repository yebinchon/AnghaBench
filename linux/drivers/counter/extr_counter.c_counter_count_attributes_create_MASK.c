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
struct counter_func_avail_unit {int /*<<< orphan*/  num_functions; int /*<<< orphan*/  functions_list; struct counter_count* count; } ;
struct counter_device_attr_group {int /*<<< orphan*/  attr_list; } ;
struct counter_device {TYPE_1__* ops; } ;
struct counter_count_unit {int /*<<< orphan*/  num_functions; int /*<<< orphan*/  functions_list; struct counter_count* count; } ;
struct counter_count {int /*<<< orphan*/  name; int /*<<< orphan*/  num_functions; int /*<<< orphan*/  functions_list; } ;
struct counter_attr_parm {char* prefix; char* name; struct counter_func_avail_unit* component; int /*<<< orphan*/ * store; int /*<<< orphan*/ * show; struct counter_device_attr_group* group; } ;
struct TYPE_2__ {scalar_t__ function_set; scalar_t__ function_get; scalar_t__ count_write; scalar_t__ count_read; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct counter_attr_parm*) ; 
 int FUNC1 (struct counter_device_attr_group* const,struct counter_count* const) ; 
 int /*<<< orphan*/ * counter_count_function_available_show ; 
 int /*<<< orphan*/ * counter_count_show ; 
 int /*<<< orphan*/ * counter_count_store ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * counter_function_show ; 
 int /*<<< orphan*/ * counter_function_store ; 
 int FUNC3 (struct counter_device_attr_group* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct counter_func_avail_unit*) ; 
 struct counter_func_avail_unit* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(
	struct counter_device_attr_group *const group,
	const struct counter_device *const counter,
	struct counter_count *const count)
{
	struct counter_count_unit *count_comp;
	struct counter_attr_parm parm;
	int err;
	struct counter_count_unit *func_comp;
	struct counter_func_avail_unit *avail_comp;

	/* Allocate count attribute component */
	count_comp = FUNC5(sizeof(*count_comp), GFP_KERNEL);
	if (!count_comp)
		return -ENOMEM;
	count_comp->count = count;

	/* Create main Count attribute */
	parm.group = group;
	parm.prefix = "";
	parm.name = "count";
	parm.show = (counter->ops->count_read) ? counter_count_show : NULL;
	parm.store = (counter->ops->count_write) ? counter_count_store : NULL;
	parm.component = count_comp;
	err = FUNC0(&parm);
	if (err) {
		FUNC4(count_comp);
		return err;
	}

	/* Allocate function attribute component */
	func_comp = FUNC5(sizeof(*func_comp), GFP_KERNEL);
	if (!func_comp) {
		err = -ENOMEM;
		goto err_free_attr_list;
	}
	func_comp->count = count;

	/* Create Count function attribute */
	parm.group = group;
	parm.prefix = "";
	parm.name = "function";
	parm.show = (counter->ops->function_get) ? counter_function_show : NULL;
	parm.store = (counter->ops->function_set) ? counter_function_store : NULL;
	parm.component = func_comp;
	err = FUNC0(&parm);
	if (err) {
		FUNC4(func_comp);
		goto err_free_attr_list;
	}

	/* Allocate function available attribute component */
	avail_comp = FUNC5(sizeof(*avail_comp), GFP_KERNEL);
	if (!avail_comp) {
		err = -ENOMEM;
		goto err_free_attr_list;
	}
	avail_comp->functions_list = count->functions_list;
	avail_comp->num_functions = count->num_functions;

	/* Create Count function_available attribute */
	parm.group = group;
	parm.prefix = "";
	parm.name = "function_available";
	parm.show = counter_count_function_available_show;
	parm.store = NULL;
	parm.component = avail_comp;
	err = FUNC0(&parm);
	if (err) {
		FUNC4(avail_comp);
		goto err_free_attr_list;
	}

	/* Create Count name attribute */
	err = FUNC3(group, count->name);
	if (err)
		goto err_free_attr_list;

	/* Register Count extension attributes */
	err = FUNC1(group, count);
	if (err)
		goto err_free_attr_list;

	return 0;

err_free_attr_list:
	FUNC2(&group->attr_list);
	return err;
}