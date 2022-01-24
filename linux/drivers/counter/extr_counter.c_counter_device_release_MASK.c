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
struct device {int dummy; } ;
struct counter_device_state {int /*<<< orphan*/  id; int /*<<< orphan*/  num_groups; int /*<<< orphan*/  groups_list; struct counter_device_state* const groups; } ;
struct counter_device {struct counter_device_state* device_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  counter_ida ; 
 struct counter_device* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct counter_device_state* const) ; 

__attribute__((used)) static void FUNC4(struct device *dev)
{
	struct counter_device *const counter = FUNC1(dev);
	struct counter_device_state *const device_state = counter->device_state;

	FUNC3(device_state->groups);
	FUNC0(device_state->groups_list,
					device_state->num_groups);
	FUNC2(&counter_ida, device_state->id);
	FUNC3(device_state);
}