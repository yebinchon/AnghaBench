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
struct port_state {int dummy; } ;
struct led_classdev {int /*<<< orphan*/  dev; struct port_state* trigger_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_port_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct led_classdev *led_cdev)
{
	struct port_state *state = led_cdev->trigger_data;

	if (!state)
		return;

	FUNC0(led_cdev->dev, &dev_attr_port_state);

}