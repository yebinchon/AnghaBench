#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  explicit_get; int /*<<< orphan*/  power_resources; } ;
struct TYPE_4__ {scalar_t__ state; TYPE_1__ flags; } ;
struct acpi_device {TYPE_2__ power; } ;

/* Variables and functions */
 scalar_t__ ACPI_STATE_D0 ; 
 int FUNC0 (struct acpi_device*,scalar_t__) ; 

int FUNC1(struct acpi_device *device)
{
	int ret = 0;

	if (!device->power.flags.power_resources
	    && !device->power.flags.explicit_get
	    && device->power.state == ACPI_STATE_D0)
		ret = FUNC0(device, ACPI_STATE_D0);

	return ret;
}