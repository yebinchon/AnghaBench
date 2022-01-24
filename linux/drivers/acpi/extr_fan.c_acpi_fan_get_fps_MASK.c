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
struct TYPE_2__ {int count; int /*<<< orphan*/ * elements; } ;
union acpi_object {scalar_t__ type; TYPE_1__ package; } ;
struct acpi_fan_fps {int dummy; } ;
struct acpi_fan {int fps_count; char* fps; } ;
struct acpi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  handle; } ;
struct acpi_buffer {int member_0; char* member_1; union acpi_object* pointer; } ;
typedef  int acpi_status ;

/* Variables and functions */
 int ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct acpi_fan* FUNC1 (struct acpi_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct acpi_buffer*,struct acpi_buffer*) ; 
 int /*<<< orphan*/  acpi_fan_speed_cmp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct acpi_device *device)
{
	struct acpi_fan *fan = FUNC1(device);
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	acpi_status status;
	int i;

	status = FUNC2(device->handle, "_FPS", NULL, &buffer);
	if (FUNC0(status))
		return status;

	obj = buffer.pointer;
	if (!obj || obj->type != ACPI_TYPE_PACKAGE || obj->package.count < 2) {
		FUNC4(&device->dev, "Invalid _FPS data\n");
		status = -EINVAL;
		goto err;
	}

	fan->fps_count = obj->package.count - 1; /* minus revision field */
	fan->fps = FUNC5(&device->dev,
				fan->fps_count, sizeof(struct acpi_fan_fps),
				GFP_KERNEL);
	if (!fan->fps) {
		FUNC4(&device->dev, "Not enough memory\n");
		status = -ENOMEM;
		goto err;
	}
	for (i = 0; i < fan->fps_count; i++) {
		struct acpi_buffer format = { sizeof("NNNNN"), "NNNNN" };
		struct acpi_buffer fps = { sizeof(fan->fps[i]), &fan->fps[i] };
		status = FUNC3(&obj->package.elements[i + 1],
					      &format, &fps);
		if (FUNC0(status)) {
			FUNC4(&device->dev, "Invalid _FPS element\n");
			break;
		}
	}

	/* sort the state array according to fan speed in increase order */
	FUNC7(fan->fps, fan->fps_count, sizeof(*fan->fps),
	     acpi_fan_speed_cmp, NULL);

err:
	FUNC6(obj);
	return status;
}