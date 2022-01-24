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
struct TYPE_2__ {char* string; } ;
struct acpi_device_info {int valid; TYPE_1__ hardware_id; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ACPI_VALID_HID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct acpi_device_info**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct acpi_device_info*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 

__attribute__((used)) static bool FUNC5(acpi_handle handle, char **type)
{
	acpi_status status;
	struct acpi_device_info *info;
	char *hid = NULL;
	bool match = false;

	if (!FUNC2(handle, "_GSB"))
		return false;

	status = FUNC1(handle, &info);
	if (FUNC0(status)) {
		if (info->valid & ACPI_VALID_HID)
			hid = info->hardware_id.string;
		if (hid) {
			if (FUNC4(hid, "ACPI0009") == 0) {
				*type = "IOxAPIC";
				match = true;
			} else if (FUNC4(hid, "ACPI000A") == 0) {
				*type = "IOAPIC";
				match = true;
			}
		}
		FUNC3(info);
	}

	return match;
}