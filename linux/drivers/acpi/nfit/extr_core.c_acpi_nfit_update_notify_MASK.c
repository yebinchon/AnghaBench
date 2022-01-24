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
struct TYPE_2__ {int /*<<< orphan*/  length; int /*<<< orphan*/  pointer; } ;
union acpi_object {scalar_t__ type; TYPE_1__ buffer; } ;
struct device {int /*<<< orphan*/  driver; } ;
struct acpi_nfit_desc {int dummy; } ;
struct acpi_buffer {union acpi_object* pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_BUFFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_nfit_desc*,struct device*) ; 
 int FUNC3 (struct acpi_nfit_desc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 struct acpi_nfit_desc* FUNC6 (struct device*) ; 
 struct acpi_nfit_desc* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (union acpi_object*) ; 
 int /*<<< orphan*/  nfit_wq ; 

__attribute__((used)) static void FUNC10(struct device *dev, acpi_handle handle)
{
	struct acpi_nfit_desc *acpi_desc = FUNC6(dev);
	struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *obj;
	acpi_status status;
	int ret;

	if (!dev->driver) {
		/* dev->driver may be null if we're being removed */
		FUNC4(dev, "no driver found for dev\n");
		return;
	}

	if (!acpi_desc) {
		acpi_desc = FUNC7(dev, sizeof(*acpi_desc), GFP_KERNEL);
		if (!acpi_desc)
			return;
		FUNC2(acpi_desc, dev);
	} else {
		/*
		 * Finish previous registration before considering new
		 * regions.
		 */
		FUNC8(nfit_wq);
	}

	/* Evaluate _FIT */
	status = FUNC1(handle, "_FIT", NULL, &buf);
	if (FUNC0(status)) {
		FUNC5(dev, "failed to evaluate _FIT\n");
		return;
	}

	obj = buf.pointer;
	if (obj->type == ACPI_TYPE_BUFFER) {
		ret = FUNC3(acpi_desc, obj->buffer.pointer,
				obj->buffer.length);
		if (ret)
			FUNC5(dev, "failed to merge updated NFIT\n");
	} else
		FUNC5(dev, "Invalid _FIT\n");
	FUNC9(buf.pointer);
}