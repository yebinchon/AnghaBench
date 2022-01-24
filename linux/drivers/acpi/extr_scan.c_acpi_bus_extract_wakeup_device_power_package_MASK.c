#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int value; } ;
struct TYPE_5__ {int count; union acpi_object* elements; } ;
struct TYPE_4__ {int /*<<< orphan*/ * handle; } ;
union acpi_object {scalar_t__ type; TYPE_3__ integer; TYPE_2__ package; TYPE_1__ reference; } ;
typedef  int u32 ;
struct acpi_device_wakeup {int gpe_number; int sleep_state; int /*<<< orphan*/  resources; int /*<<< orphan*/ * gpe_device; } ;
struct acpi_device {struct acpi_device_wakeup wakeup; int /*<<< orphan*/  handle; } ;
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_INTEGER ; 
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,struct acpi_buffer*) ; 
 int FUNC4 (union acpi_object*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct acpi_device *dev)
{
	acpi_handle handle = dev->handle;
	struct acpi_device_wakeup *wakeup = &dev->wakeup;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };
	union acpi_object *package = NULL;
	union acpi_object *element = NULL;
	acpi_status status;
	int err = -ENODATA;

	FUNC2(&wakeup->resources);

	/* _PRW */
	status = FUNC3(handle, "_PRW", NULL, &buffer);
	if (FUNC1(status)) {
		FUNC0((AE_INFO, status, "Evaluating _PRW"));
		return err;
	}

	package = (union acpi_object *)buffer.pointer;

	if (!package || package->package.count < 2)
		goto out;

	element = &(package->package.elements[0]);
	if (!element)
		goto out;

	if (element->type == ACPI_TYPE_PACKAGE) {
		if ((element->package.count < 2) ||
		    (element->package.elements[0].type !=
		     ACPI_TYPE_LOCAL_REFERENCE)
		    || (element->package.elements[1].type != ACPI_TYPE_INTEGER))
			goto out;

		wakeup->gpe_device =
		    element->package.elements[0].reference.handle;
		wakeup->gpe_number =
		    (u32) element->package.elements[1].integer.value;
	} else if (element->type == ACPI_TYPE_INTEGER) {
		wakeup->gpe_device = NULL;
		wakeup->gpe_number = element->integer.value;
	} else {
		goto out;
	}

	element = &(package->package.elements[1]);
	if (element->type != ACPI_TYPE_INTEGER)
		goto out;

	wakeup->sleep_state = element->integer.value;

	err = FUNC4(package, 2, &wakeup->resources);
	if (err)
		goto out;

	if (!FUNC9(&wakeup->resources)) {
		int sleep_state;

		err = FUNC7(&wakeup->resources,
						  &sleep_state);
		if (err) {
			FUNC5(handle, "Retrieving current states "
					 "of wakeup power resources failed\n");
			FUNC6(&wakeup->resources);
			goto out;
		}
		if (sleep_state < wakeup->sleep_state) {
			FUNC5(handle, "Overriding _PRW sleep state "
					 "(S%d) by S%d from power resources\n",
					 (int)wakeup->sleep_state, sleep_state);
			wakeup->sleep_state = sleep_state;
		}
	}

 out:
	FUNC8(buffer.pointer);
	return err;
}