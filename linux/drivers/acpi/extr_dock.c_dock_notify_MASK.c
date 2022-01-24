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
typedef  int u32 ;
struct dock_station {int flags; int /*<<< orphan*/  handle; } ;
struct acpi_device {int /*<<< orphan*/  handle; } ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
#define  ACPI_NOTIFY_BUS_CHECK 130 
#define  ACPI_NOTIFY_DEVICE_CHECK 129 
#define  ACPI_NOTIFY_EJECT_REQUEST 128 
 int /*<<< orphan*/  DOCK_EVENT ; 
 int DOCK_IS_ATA ; 
 int DOCK_IS_DOCK ; 
 int ENODEV ; 
 int /*<<< orphan*/  UNDOCK_EVENT ; 
 int /*<<< orphan*/  FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct dock_station*) ; 
 int /*<<< orphan*/  FUNC5 (struct dock_station*) ; 
 int /*<<< orphan*/  FUNC6 (struct dock_station*) ; 
 int /*<<< orphan*/  FUNC7 (struct dock_station*) ; 
 int /*<<< orphan*/  FUNC8 (struct dock_station*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dock_station*) ; 
 int /*<<< orphan*/  FUNC10 (struct dock_station*) ; 
 struct dock_station* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dock_station*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dock_station*,int) ; 
 int /*<<< orphan*/  immediate_undock ; 

int FUNC14(struct acpi_device *adev, u32 event)
{
	acpi_handle handle = adev->handle;
	struct dock_station *ds = FUNC11(handle);
	int surprise_removal = 0;

	if (!ds)
		return -ENODEV;

	/*
	 * According to acpi spec 3.0a, if a DEVICE_CHECK notification
	 * is sent and _DCK is present, it is assumed to mean an undock
	 * request.
	 */
	if ((ds->flags & DOCK_IS_DOCK) && event == ACPI_NOTIFY_DEVICE_CHECK)
		event = ACPI_NOTIFY_EJECT_REQUEST;

	/*
	 * dock station: BUS_CHECK - docked or surprise removal
	 *		 DEVICE_CHECK - undocked
	 * other device: BUS_CHECK/DEVICE_CHECK - added or surprise removal
	 *
	 * To simplify event handling, dock dependent device handler always
	 * get ACPI_NOTIFY_BUS_CHECK/ACPI_NOTIFY_DEVICE_CHECK for add and
	 * ACPI_NOTIFY_EJECT_REQUEST for removal
	 */
	switch (event) {
	case ACPI_NOTIFY_BUS_CHECK:
	case ACPI_NOTIFY_DEVICE_CHECK:
		if (!FUNC9(ds) && !FUNC0(adev)) {
			FUNC4(ds);
			FUNC7(ds);
			if (!FUNC10(ds)) {
				FUNC2(handle, "Unable to dock!\n");
				FUNC6(ds);
				break;
			}
			FUNC13(ds, event);
			FUNC6(ds);
			FUNC8(ds, event, DOCK_EVENT);
			FUNC1(ds->handle, 1);
			FUNC3();
			break;
		}
		if (FUNC10(ds) || FUNC9(ds))
			break;
		/* This is a surprise removal */
		surprise_removal = 1;
		event = ACPI_NOTIFY_EJECT_REQUEST;
		/* Fall back */
		/* fall through */
	case ACPI_NOTIFY_EJECT_REQUEST:
		FUNC5(ds);
		if ((immediate_undock && !(ds->flags & DOCK_IS_ATA))
		   || surprise_removal)
			FUNC12(ds, event);
		else
			FUNC8(ds, event, UNDOCK_EVENT);
		break;
	}
	return 0;
}