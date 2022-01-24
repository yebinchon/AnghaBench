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
struct TYPE_2__ {int value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  type; } ;
typedef  int u32 ;
struct device {int dummy; } ;
struct acpi_object_list {int /*<<< orphan*/  count; union acpi_object* pointer; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, char *buf, u32 timer_id)
{
	acpi_handle handle = FUNC1(dev);
	union acpi_object args[] = {
		{ .type = ACPI_TYPE_INTEGER, },
	};
	struct acpi_object_list arg_list = {
		.pointer = args,
		.count = FUNC2(args),
	};
	unsigned long long retval;
	acpi_status status;

	args[0].integer.value = timer_id;

	FUNC4(dev);

	status = FUNC3(handle, "_GWS", &arg_list, &retval);

	FUNC5(dev);

	if (FUNC0(status))
		return -EIO;

	return FUNC6(buf, "0x%02X\n", (u32)retval);
}