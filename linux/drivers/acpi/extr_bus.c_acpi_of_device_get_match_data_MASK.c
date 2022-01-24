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
struct of_device_id {void const* data; } ;
struct device {TYPE_1__* driver; } ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (struct device const*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,int /*<<< orphan*/ ,struct of_device_id const**) ; 

__attribute__((used)) static const void *FUNC2(const struct device *dev)
{
	struct acpi_device *adev = FUNC0(dev);
	const struct of_device_id *match = NULL;

	if (!FUNC1(adev, dev->driver->of_match_table, &match))
		return NULL;

	return match->data;
}