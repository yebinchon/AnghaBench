#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct TYPE_8__ {size_t count; TYPE_3__* ids; } ;
struct TYPE_6__ {int /*<<< orphan*/  string; } ;
struct TYPE_5__ {int /*<<< orphan*/  string; } ;
struct acpi_device_info {int valid; TYPE_4__ compatible_id_list; TYPE_2__ unique_id; TYPE_1__ hardware_id; int /*<<< orphan*/ * lowest_dstates; int /*<<< orphan*/ * highest_dstates; int /*<<< orphan*/  flags; int /*<<< orphan*/  address; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_size ;
typedef  int /*<<< orphan*/  acpi_handle ;
struct TYPE_7__ {int /*<<< orphan*/  string; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int ACPI_VALID_CID ; 
 int ACPI_VALID_HID ; 
 int ACPI_VALID_UID ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct acpi_device_info**) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int) ; 

void FUNC8(char *object_arg)
{
	acpi_size arg;
	acpi_handle handle;
	struct acpi_device_info *info;
	acpi_status status;
	u32 i;

	arg = FUNC7(object_arg, NULL, 16);
	handle = FUNC3(arg);

	status = FUNC5(handle, &info);
	if (FUNC0(status)) {
		FUNC6("Could not get object info, %s\n",
			       FUNC4(status));
		return;
	}

	FUNC6("ADR: %8.8X%8.8X, Flags: %X\n",
		       FUNC1(info->address), info->flags);

	FUNC6("S1D-%2.2X S2D-%2.2X S3D-%2.2X S4D-%2.2X\n",
		       info->highest_dstates[0], info->highest_dstates[1],
		       info->highest_dstates[2], info->highest_dstates[3]);

	FUNC6("S0W-%2.2X S1W-%2.2X S2W-%2.2X S3W-%2.2X S4W-%2.2X\n",
		       info->lowest_dstates[0], info->lowest_dstates[1],
		       info->lowest_dstates[2], info->lowest_dstates[3],
		       info->lowest_dstates[4]);

	if (info->valid & ACPI_VALID_HID) {
		FUNC6("HID: %s\n", info->hardware_id.string);
	}

	if (info->valid & ACPI_VALID_UID) {
		FUNC6("UID: %s\n", info->unique_id.string);
	}

	if (info->valid & ACPI_VALID_CID) {
		for (i = 0; i < info->compatible_id_list.count; i++) {
			FUNC6("CID %u: %s\n", i,
				       info->compatible_id_list.ids[i].string);
		}
	}

	FUNC2(info);
}