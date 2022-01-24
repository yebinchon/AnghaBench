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
struct acpi_power_resource {int /*<<< orphan*/  resource_lock; } ;

/* Variables and functions */
 int FUNC0 (struct acpi_power_resource*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct acpi_power_resource *resource)
{
	int result;

	FUNC1(&resource->resource_lock);
	result = FUNC0(resource);
	FUNC2(&resource->resource_lock);
	return result;
}