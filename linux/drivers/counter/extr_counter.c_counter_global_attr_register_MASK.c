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
struct counter_device_attr_group {int /*<<< orphan*/  attr_list; } ;
struct counter_device {int /*<<< orphan*/  num_signals; int /*<<< orphan*/  num_counts; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct counter_device_attr_group* const,struct counter_device* const) ; 
 int FUNC2 (struct counter_device_attr_group* const,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct counter_device_attr_group* const,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(
	struct counter_device_attr_group *const group,
	struct counter_device *const counter)
{
	int err;

	/* Create name attribute */
	err = FUNC2(group, counter->name);
	if (err)
		return err;

	/* Create num_counts attribute */
	err = FUNC3(group, counter->num_counts,
					    "num_counts");
	if (err)
		goto err_free_attr_list;

	/* Create num_signals attribute */
	err = FUNC3(group, counter->num_signals,
					    "num_signals");
	if (err)
		goto err_free_attr_list;

	/* Register Counter device extension attributes */
	err = FUNC1(group, counter);
	if (err)
		goto err_free_attr_list;

	return 0;

err_free_attr_list:
	FUNC0(&group->attr_list);
	return err;
}