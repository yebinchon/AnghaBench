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
struct TYPE_2__ {void* value; } ;
union acpi_object {TYPE_1__ integer; int /*<<< orphan*/  type; } ;
typedef  void* u32 ;
struct device {int dummy; } ;
struct acpi_object_list {int /*<<< orphan*/  count; union acpi_object* pointer; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  ACPI_TYPE_INTEGER ; 
 int /*<<< orphan*/  FUNC2 (union acpi_object*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,struct acpi_object_list*,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 

__attribute__((used)) static int FUNC6(struct device *dev, char *method, u32 timer_id,
			     u32 value)
{
	acpi_handle handle = FUNC1(dev);
	union acpi_object args[] = {
		{ .type = ACPI_TYPE_INTEGER, },
		{ .type = ACPI_TYPE_INTEGER, },
	};
	struct acpi_object_list arg_list = {
		.pointer = args,
		.count = FUNC2(args),
	};
	unsigned long long retval;
	acpi_status status;

	args[0].integer.value = timer_id;
	args[1].integer.value = value;

	FUNC4(dev);

	status = FUNC3(handle, method, &arg_list, &retval);

	FUNC5(dev);

	if (FUNC0(status) || retval)
		return -EIO;

	return 0;
}