#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  of_node; TYPE_1__* parent; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * type; } ;
struct counter_device_state {int id; int /*<<< orphan*/  num_groups; int /*<<< orphan*/  groups_list; struct counter_device_state* groups; TYPE_2__ dev; } ;
struct counter_device {TYPE_1__* parent; struct counter_device_state* device_state; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  counter_bus_type ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct counter_device* const) ; 
 int FUNC2 (struct counter_device_state*) ; 
 int /*<<< orphan*/  counter_device_type ; 
 int /*<<< orphan*/  counter_ida ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct counter_device* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct counter_device_state*) ; 
 struct counter_device_state* FUNC10 (int,int /*<<< orphan*/ ) ; 

int FUNC11(struct counter_device *const counter)
{
	struct counter_device_state *device_state;
	int err;

	/* Allocate internal state container for Counter device */
	device_state = FUNC10(sizeof(*device_state), GFP_KERNEL);
	if (!device_state)
		return -ENOMEM;
	counter->device_state = device_state;

	/* Acquire unique ID */
	device_state->id = FUNC7(&counter_ida, 0, 0, GFP_KERNEL);
	if (device_state->id < 0) {
		err = device_state->id;
		goto err_free_device_state;
	}

	/* Configure device structure for Counter */
	device_state->dev.type = &counter_device_type;
	device_state->dev.bus = &counter_bus_type;
	if (counter->parent) {
		device_state->dev.parent = counter->parent;
		device_state->dev.of_node = counter->parent->of_node;
	}
	FUNC4(&device_state->dev, "counter%d", device_state->id);
	FUNC6(&device_state->dev);
	FUNC3(&device_state->dev, counter);

	/* Prepare device attributes */
	err = FUNC1(counter);
	if (err)
		goto err_free_id;

	/* Organize device attributes to groups and match to device */
	err = FUNC2(device_state);
	if (err)
		goto err_free_groups_list;

	/* Add device to system */
	err = FUNC5(&device_state->dev);
	if (err)
		goto err_free_groups;

	return 0;

err_free_groups:
	FUNC9(device_state->groups);
err_free_groups_list:
	FUNC0(device_state->groups_list,
					device_state->num_groups);
err_free_id:
	FUNC8(&counter_ida, device_state->id);
err_free_device_state:
	FUNC9(device_state);
	return err;
}