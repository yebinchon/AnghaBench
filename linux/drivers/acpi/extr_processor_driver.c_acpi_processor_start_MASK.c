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
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device*) ; 
 int ENODEV ; 
 int FUNC1 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct acpi_device *device = FUNC0(dev);
	int ret;

	if (!device)
		return -ENODEV;

	/* Protect against concurrent CPU hotplug operations */
	FUNC2();
	ret = FUNC1(device);
	FUNC3();
	return ret;
}