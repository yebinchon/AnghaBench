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
struct TYPE_6__ {char* pointer; } ;
struct TYPE_5__ {int count; union acpi_object* elements; } ;
union acpi_object {scalar_t__ type; TYPE_3__ string; TYPE_2__ package; } ;
struct TYPE_4__ {union acpi_object* of_compatible; } ;
struct acpi_device {TYPE_1__ data; int /*<<< orphan*/  handle; } ;
struct acpi_buffer {char* pointer; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ACPI_SINGLE_NAME ; 
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 int FUNC3 (char*,int,char*,char*) ; 
 char FUNC4 (char) ; 

__attribute__((used)) static int FUNC5(struct acpi_device *acpi_dev, char *modalias,
			      int size)
{
	struct acpi_buffer buf = { ACPI_ALLOCATE_BUFFER };
	const union acpi_object *of_compatible, *obj;
	acpi_status status;
	int len, count;
	int i, nval;
	char *c;

	status = FUNC2(acpi_dev->handle, ACPI_SINGLE_NAME, &buf);
	if (FUNC0(status))
		return -ENODEV;

	/* DT strings are all in lower case */
	for (c = buf.pointer; *c != '\0'; c++)
		*c = FUNC4(*c);

	len = FUNC3(modalias, size, "of:N%sT", (char *)buf.pointer);
	FUNC1(buf.pointer);

	if (len <= 0)
		return len;

	of_compatible = acpi_dev->data.of_compatible;
	if (of_compatible->type == ACPI_TYPE_PACKAGE) {
		nval = of_compatible->package.count;
		obj = of_compatible->package.elements;
	} else { /* Must be ACPI_TYPE_STRING. */
		nval = 1;
		obj = of_compatible;
	}
	for (i = 0; i < nval; i++, obj++) {
		count = FUNC3(&modalias[len], size, "C%s",
				 obj->string.pointer);
		if (count < 0)
			return -EINVAL;

		if (count >= size)
			return -ENOMEM;

		len += count;
		size -= count;
	}
	modalias[len] = '\0';
	return len;
}