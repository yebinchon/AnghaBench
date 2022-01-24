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
struct TYPE_4__ {int /*<<< orphan*/ * edev; } ;
struct TYPE_6__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_3__ dev; } ;
struct eeh_dev {int in_error; int /*<<< orphan*/  mode; TYPE_2__* pe; int /*<<< orphan*/ * pdev; } ;
struct TYPE_5__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_DEV_DISCONNECTED ; 
 int /*<<< orphan*/  EEH_DEV_NO_HANDLER ; 
 int /*<<< orphan*/  EEH_DEV_SYSFS ; 
 int EEH_PE_KEEP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*) ; 
 struct eeh_dev* FUNC5 (struct pci_dev*) ; 

void FUNC6(struct pci_dev *dev)
{
	struct eeh_dev *edev;

	if (!dev || !FUNC2())
		return;
	edev = FUNC5(dev);

	/* Unregister the device with the EEH/PCI address search system */
	FUNC0(&dev->dev, "EEH: Removing device\n");

	if (!edev || !edev->pdev || !edev->pe) {
		FUNC0(&dev->dev, "EEH: Device not referenced!\n");
		return;
	}

	/*
	 * During the hotplug for EEH error recovery, we need the EEH
	 * device attached to the parent PE in order for BAR restore
	 * a bit later. So we keep it for BAR restore and remove it
	 * from the parent PE during the BAR resotre.
	 */
	edev->pdev = NULL;

	/*
	 * The flag "in_error" is used to trace EEH devices for VFs
	 * in error state or not. It's set in eeh_report_error(). If
	 * it's not set, eeh_report_{reset,resume}() won't be called
	 * for the VF EEH device.
	 */
	edev->in_error = false;
	dev->dev.archdata.edev = NULL;
	if (!(edev->pe->state & EEH_PE_KEEP))
		FUNC3(edev);
	else
		edev->mode |= EEH_DEV_DISCONNECTED;

	/*
	 * We're removing from the PCI subsystem, that means
	 * the PCI device driver can't support EEH or not
	 * well. So we rely on hotplug completely to do recovery
	 * for the specific PCI device.
	 */
	edev->mode |= EEH_DEV_NO_HANDLER;

	FUNC1(dev);
	FUNC4(dev);
	edev->mode &= ~EEH_DEV_SYSFS;
}