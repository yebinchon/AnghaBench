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
typedef  int /*<<< orphan*/  u64 ;
struct ata_port {int flags; int /*<<< orphan*/  port_no; TYPE_1__* host; int /*<<< orphan*/  tdev; } ;
struct ata_device {int /*<<< orphan*/  tdev; int /*<<< orphan*/  devno; TYPE_2__* link; } ;
struct TYPE_6__ {struct ata_device* dev; } ;
struct ata_acpi_hotplug_context {int /*<<< orphan*/  hp; TYPE_3__ data; } ;
struct acpi_device {scalar_t__ hp; } ;
struct TYPE_5__ {int /*<<< orphan*/  pmp; struct ata_port* ap; } ;
struct TYPE_4__ {int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 struct acpi_device* FUNC0 (int /*<<< orphan*/ *) ; 
 int ATA_FLAG_ACPI_SATA ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_PORT_MULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct acpi_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct acpi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ata_acpi_dev_notify_dock ; 
 int /*<<< orphan*/  ata_acpi_dev_uevent ; 
 struct ata_acpi_hotplug_context* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ libata_noacpi ; 
 int /*<<< orphan*/  FUNC5 (struct ata_port*) ; 

void FUNC6(struct ata_device *dev)
{
	struct ata_port *ap = dev->link->ap;
	struct acpi_device *port_companion = FUNC0(&ap->tdev);
	struct acpi_device *host_companion = FUNC0(ap->host->dev);
	struct acpi_device *parent, *adev;
	struct ata_acpi_hotplug_context *context;
	u64 adr;

	/*
	 * For both sata/pata devices, host companion device is required.
	 * For pata device, port companion device is also required.
	 */
	if (libata_noacpi || !host_companion ||
			(!(ap->flags & ATA_FLAG_ACPI_SATA) && !port_companion))
		return;

	if (ap->flags & ATA_FLAG_ACPI_SATA) {
		if (!FUNC5(ap))
			adr = FUNC1(ap->port_no, NO_PORT_MULT);
		else
			adr = FUNC1(ap->port_no, dev->link->pmp);
		parent = host_companion;
	} else {
		adr = dev->devno;
		parent = port_companion;
	}

	FUNC3(&dev->tdev, parent, adr);
	adev = FUNC0(&dev->tdev);
	if (!adev || adev->hp)
		return;

	context = FUNC4(sizeof(*context), GFP_KERNEL);
	if (!context)
		return;

	context->data.dev = dev;
	FUNC2(adev, &context->hp, ata_acpi_dev_notify_dock,
				   ata_acpi_dev_uevent);
}