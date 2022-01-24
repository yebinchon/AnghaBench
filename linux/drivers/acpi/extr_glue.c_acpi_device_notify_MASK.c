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
struct device {int dummy; } ;
struct acpi_device {TYPE_1__* handler; } ;
struct acpi_bus_type {int /*<<< orphan*/  (* setup ) (struct device*) ;struct acpi_device* (* find_companion ) (struct device*) ;} ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* bind ) (struct device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 struct acpi_device* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  ACPI_FULL_PATHNAME ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int ENODEV ; 
 int FUNC3 (struct device*,struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct acpi_bus_type* FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 scalar_t__ FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 struct acpi_device* FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device*) ; 

__attribute__((used)) static int FUNC13(struct device *dev)
{
	struct acpi_bus_type *type = FUNC5(dev);
	struct acpi_device *adev;
	int ret;

	ret = FUNC3(dev, NULL);
	if (ret && type) {
		struct acpi_device *adev;

		adev = type->find_companion(dev);
		if (!adev) {
			FUNC2("Unable to get handle for %s\n", FUNC8(dev));
			ret = -ENODEV;
			goto out;
		}
		ret = FUNC3(dev, adev);
		if (ret)
			goto out;
	}
	adev = FUNC0(dev);
	if (!adev)
		goto out;

	if (FUNC7(dev))
		FUNC4(dev);

	if (type && type->setup)
		type->setup(dev);
	else if (adev->handler && adev->handler->bind)
		adev->handler->bind(dev);

 out:
#if ACPI_GLUE_DEBUG
	if (!ret) {
		struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };

		acpi_get_name(ACPI_HANDLE(dev), ACPI_FULL_PATHNAME, &buffer);
		DBG("Device %s -> %s\n", dev_name(dev), (char *)buffer.pointer);
		kfree(buffer.pointer);
	} else
		DBG("Device %s -> No ACPI support\n", dev_name(dev));
#endif

	return ret;
}