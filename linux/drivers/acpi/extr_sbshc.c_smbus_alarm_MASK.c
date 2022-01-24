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
struct TYPE_2__ {scalar_t__ status; scalar_t__ alarm; scalar_t__ done; } ;
union acpi_smb_status {int raw; TYPE_1__ fields; } ;
typedef  int u8 ;
struct acpi_smb_hc {int done; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
#define  ACPI_SBS_BATTERY 130 
#define  ACPI_SBS_CHARGER 129 
#define  ACPI_SBS_MANAGER 128 
 int /*<<< orphan*/  ACPI_SMB_ALARM_ADDRESS ; 
 int /*<<< orphan*/  ACPI_SMB_STATUS ; 
 int /*<<< orphan*/  OSL_NOTIFY_HANDLER ; 
 scalar_t__ SMBUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct acpi_smb_hc*) ; 
 int /*<<< orphan*/  acpi_smbus_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct acpi_smb_hc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct acpi_smb_hc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(void *context)
{
	struct acpi_smb_hc *hc = context;
	union acpi_smb_status status;
	u8 address;
	if (FUNC3(hc, ACPI_SMB_STATUS, &status.raw))
		return 0;
	/* Check if it is only a completion notify */
	if (status.fields.done && status.fields.status == SMBUS_OK) {
		hc->done = true;
		FUNC5(&hc->wait);
	}
	if (!status.fields.alarm)
		return 0;
	FUNC1(&hc->lock);
	FUNC3(hc, ACPI_SMB_ALARM_ADDRESS, &address);
	status.fields.alarm = 0;
	FUNC4(hc, ACPI_SMB_STATUS, status.raw);
	/* We are only interested in events coming from known devices */
	switch (address >> 1) {
		case ACPI_SBS_CHARGER:
		case ACPI_SBS_MANAGER:
		case ACPI_SBS_BATTERY:
			FUNC0(OSL_NOTIFY_HANDLER,
					acpi_smbus_callback, hc);
		default:;
	}
	FUNC2(&hc->lock);
	return 0;
}