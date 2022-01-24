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
struct acpi_buffer {scalar_t__ pointer; int /*<<< orphan*/ * member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_FULL_PATHNAME ; 
 unsigned long long ACPI_STA_DEVICE_PRESENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_buffer*) ; 
 scalar_t__ check_sta_before_sun ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC6(acpi_handle handle, unsigned long long *sun)
{
	int device = -1;
	unsigned long long adr, sta;
	acpi_status status;
	struct acpi_buffer buffer = { ACPI_ALLOCATE_BUFFER, NULL };

	FUNC3(handle, ACPI_FULL_PATHNAME, &buffer);
	FUNC5("Checking slot on path: %s\n", (char *)buffer.pointer);

	if (check_sta_before_sun) {
		/* If SxFy doesn't have _STA, we just assume it's there */
		status = FUNC2(handle, "_STA", NULL, &sta);
		if (FUNC1(status) && !(sta & ACPI_STA_DEVICE_PRESENT))
			goto out;
	}

	status = FUNC2(handle, "_ADR", NULL, &adr);
	if (FUNC0(status)) {
		FUNC5("_ADR returned %d on %s\n",
			 status, (char *)buffer.pointer);
		goto out;
	}

	/* No _SUN == not a slot == bail */
	status = FUNC2(handle, "_SUN", NULL, sun);
	if (FUNC0(status)) {
		FUNC5("_SUN returned %d on %s\n",
			 status, (char *)buffer.pointer);
		goto out;
	}

	device = (adr >> 16) & 0xffff;
out:
	FUNC4(buffer.pointer);
	return device;
}