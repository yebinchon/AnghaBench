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
struct pci_dn {int dummy; } ;
struct TYPE_4__ {struct eeh_dev* edev; } ;
struct TYPE_5__ {TYPE_1__ archdata; } ;
struct pci_dev {TYPE_2__ dev; int /*<<< orphan*/  devfn; int /*<<< orphan*/  bus; } ;
struct eeh_dev {struct pci_dev* pdev; int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* probe ) (struct pci_dn*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EEH_DEV_NO_HANDLER ; 
 int /*<<< orphan*/  EEH_DEV_SYSFS ; 
 int /*<<< orphan*/  EEH_PROBE_MODE_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct eeh_dev*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* eeh_ops ; 
 int /*<<< orphan*/  FUNC4 (struct eeh_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dn* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eeh_dev* FUNC7 (struct pci_dn*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dn*,int /*<<< orphan*/ *) ; 

void FUNC9(struct pci_dev *dev)
{
	struct pci_dn *pdn;
	struct eeh_dev *edev;

	if (!dev)
		return;

	pdn = FUNC6(dev->bus, dev->devfn);
	edev = FUNC7(pdn);
	FUNC2(edev, "Adding device\n");
	if (edev->pdev == dev) {
		FUNC2(edev, "Device already referenced!\n");
		return;
	}

	/*
	 * The EEH cache might not be removed correctly because of
	 * unbalanced kref to the device during unplug time, which
	 * relies on pcibios_release_device(). So we have to remove
	 * that here explicitly.
	 */
	if (edev->pdev) {
		FUNC4(edev);
		FUNC1(edev->pdev);
		FUNC5(edev->pdev);
		edev->mode &= ~EEH_DEV_SYSFS;

		/*
		 * We definitely should have the PCI device removed
		 * though it wasn't correctly. So we needn't call
		 * into error handler afterwards.
		 */
		edev->mode |= EEH_DEV_NO_HANDLER;

		edev->pdev = NULL;
		dev->dev.archdata.edev = NULL;
	}

	if (FUNC3(EEH_PROBE_MODE_DEV))
		eeh_ops->probe(pdn, NULL);

	edev->pdev = dev;
	dev->dev.archdata.edev = edev;

	FUNC0(dev);
}