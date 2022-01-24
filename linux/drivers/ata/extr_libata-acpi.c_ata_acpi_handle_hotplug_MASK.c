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
typedef  int u32 ;
struct ata_eh_info {int dummy; } ;
struct TYPE_2__ {struct ata_eh_info eh_info; } ;
struct ata_port {int /*<<< orphan*/  lock; TYPE_1__ link; } ;
struct ata_device {int dummy; } ;

/* Variables and functions */
#define  ACPI_NOTIFY_BUS_CHECK 130 
#define  ACPI_NOTIFY_DEVICE_CHECK 129 
#define  ACPI_NOTIFY_EJECT_REQUEST 128 
 int /*<<< orphan*/  FUNC0 (struct ata_port*,struct ata_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ata_eh_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ata_eh_info*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ata_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct ata_port *ap, struct ata_device *dev,
				    u32 event)
{
	struct ata_eh_info *ehi = &ap->link.eh_info;
	int wait = 0;
	unsigned long flags;

	FUNC5(ap->lock, flags);
	/*
	 * When dock driver calls into the routine, it will always use
	 * ACPI_NOTIFY_BUS_CHECK/ACPI_NOTIFY_DEVICE_CHECK for add and
	 * ACPI_NOTIFY_EJECT_REQUEST for remove
	 */
	switch (event) {
	case ACPI_NOTIFY_BUS_CHECK:
	case ACPI_NOTIFY_DEVICE_CHECK:
		FUNC2(ehi, "ACPI event");

		FUNC1(ehi);
		FUNC3(ap);
		break;
	case ACPI_NOTIFY_EJECT_REQUEST:
		FUNC2(ehi, "ACPI event");

		FUNC0(ap, dev);
		wait = 1;
		break;
	}

	FUNC6(ap->lock, flags);

	if (wait)
		FUNC4(ap);
}