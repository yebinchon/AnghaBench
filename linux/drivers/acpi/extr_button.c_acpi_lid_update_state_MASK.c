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
struct acpi_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct acpi_device*) ; 
 int FUNC1 (struct acpi_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct acpi_device *device,
				 bool signal_wakeup)
{
	int state;

	state = FUNC0(device);
	if (state < 0)
		return state;

	if (state && signal_wakeup)
		FUNC2(&device->dev);

	return FUNC1(device, state);
}