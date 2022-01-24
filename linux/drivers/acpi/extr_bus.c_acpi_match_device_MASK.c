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
struct acpi_device_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct acpi_device_id const*,int /*<<< orphan*/ *,struct acpi_device_id const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device const*) ; 

const struct acpi_device_id *FUNC2(const struct acpi_device_id *ids,
					       const struct device *dev)
{
	const struct acpi_device_id *id = NULL;

	FUNC0(FUNC1(dev), ids, NULL, &id, NULL);
	return id;
}