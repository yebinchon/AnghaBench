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
struct list_head {int dummy; } ;
struct attribute_group {int dummy; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acpi_device*,struct list_head*,struct attribute_group const*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_device*,struct list_head*,struct attribute_group const*) ; 

__attribute__((used)) static void FUNC2(struct acpi_device *adev,
				   struct list_head *resources,
				   const struct attribute_group *attr_group,
				   bool expose)
{
	if (expose)
		FUNC0(adev, resources, attr_group);
	else
		FUNC1(adev, resources, attr_group);
}