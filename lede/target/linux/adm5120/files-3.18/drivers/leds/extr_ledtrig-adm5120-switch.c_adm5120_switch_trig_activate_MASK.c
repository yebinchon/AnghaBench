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
struct port_state {int /*<<< orphan*/  value; } ;
struct led_classdev {struct port_state* trigger_data; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_port_state ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,int /*<<< orphan*/ ) ; 
 struct port_state* port_states ; 

__attribute__((used)) static void FUNC2(struct led_classdev *led_cdev)
{
	struct port_state *state = port_states;
	int rc;

	led_cdev->trigger_data = state;

	rc = FUNC0(led_cdev->dev, &dev_attr_port_state);
	if (rc)
		goto err;

	FUNC1(led_cdev, state->value);

	return;
err:
	led_cdev->trigger_data = NULL;
}