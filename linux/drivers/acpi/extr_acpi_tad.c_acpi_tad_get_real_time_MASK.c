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
struct TYPE_2__ {int length; scalar_t__ pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct device {int dummy; } ;
struct acpi_tad_rt {int /*<<< orphan*/  valid; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union acpi_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_tad_rt*,struct acpi_tad_rt*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct device *dev, struct acpi_tad_rt *rt)
{
	acpi_handle handle = FUNC2(dev);
	struct acpi_buffer output = { ACPI_ALLOCATE_BUFFER };
	union acpi_object *out_obj;
	struct acpi_tad_rt *data;
	acpi_status status;
	int ret = -EIO;

	FUNC5(dev);

	status = FUNC3(handle, "_GRT", NULL, &output);

	FUNC6(dev);

	if (FUNC0(status))
		goto out_free;

	out_obj = output.pointer;
	if (out_obj->type != ACPI_TYPE_BUFFER)
		goto out_free;

	if (out_obj->buffer.length != sizeof(*rt))
		goto out_free;

	data = (struct acpi_tad_rt *)(out_obj->buffer.pointer);
	if (!data->valid)
		goto out_free;

	FUNC4(rt, data, sizeof(*rt));
	ret = 0;

out_free:
	FUNC1(output.pointer);
	return ret;
}