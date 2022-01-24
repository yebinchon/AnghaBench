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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct acpi_battery {unsigned long alarm_capacity; scalar_t__ present; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int FUNC0 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC1 (struct acpi_battery*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (char const*,char*,unsigned long*) ; 
 struct acpi_battery* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
					struct device_attribute *attr,
					const char *buf, size_t count)
{
	unsigned long x;
	struct acpi_battery *battery = FUNC4(FUNC2(dev));
	if (FUNC3(buf, "%lu\n", &x) == 1)
		battery->alarm_capacity = x /
			(1000 * FUNC0(battery));
	if (battery->present)
		FUNC1(battery);
	return count;
}