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
typedef  scalar_t__ u8 ;
struct pci_device_id {int dummy; } ;
struct pci_dev {scalar_t__ vendor; scalar_t__ device; int /*<<< orphan*/  dev; } ;
struct agp_bridge_data {int /*<<< orphan*/  mode; scalar_t__ capndx; struct pci_dev* dev; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ PCI_AGP_STATUS ; 
 int /*<<< orphan*/  PCI_CAP_ID_AGP ; 
 scalar_t__ PCI_DEVICE_ID_AMD_8151_0 ; 
 scalar_t__ PCI_VENDOR_ID_AL ; 
 scalar_t__ PCI_VENDOR_ID_AMD ; 
 scalar_t__ PCI_VENDOR_ID_NVIDIA ; 
 int FUNC0 (struct agp_bridge_data*) ; 
 struct agp_bridge_data* FUNC1 () ; 
 scalar_t__ agp_bridges_found ; 
 int /*<<< orphan*/  FUNC2 (struct agp_bridge_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,struct agp_bridge_data*) ; 
 int /*<<< orphan*/  amd_8151_driver ; 
 int FUNC4 (struct pci_dev*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 int FUNC6 (struct pci_dev*) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct agp_bridge_data*) ; 
 int FUNC10 (struct pci_dev*) ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev,
			   const struct pci_device_id *ent)
{
	struct agp_bridge_data *bridge;
	u8 cap_ptr;
	int err;

	/* The Highlander principle */
	if (agp_bridges_found)
		return -ENODEV;

	cap_ptr = FUNC7(pdev, PCI_CAP_ID_AGP);
	if (!cap_ptr)
		return -ENODEV;

	/* Could check for AGPv3 here */

	bridge = FUNC1();
	if (!bridge)
		return -ENOMEM;

	if (pdev->vendor == PCI_VENDOR_ID_AMD &&
	    pdev->device == PCI_DEVICE_ID_AMD_8151_0) {
		FUNC3(pdev, bridge);
	} else {
		FUNC5(&pdev->dev, "AGP bridge [%04x/%04x]\n",
			 pdev->vendor, pdev->device);
	}

	bridge->driver = &amd_8151_driver;
	bridge->dev = pdev;
	bridge->capndx = cap_ptr;

	/* Fill in the mode register */
	FUNC8(pdev, bridge->capndx+PCI_AGP_STATUS, &bridge->mode);

	if (FUNC4(pdev, cap_ptr) == -1) {
		FUNC2(bridge);
		return -ENODEV;
	}

	if (pdev->vendor == PCI_VENDOR_ID_NVIDIA) {
		int ret = FUNC6(pdev);
		if (ret) {
			FUNC2(bridge);
			return ret;
		}
	}

	if (pdev->vendor == PCI_VENDOR_ID_AL) {
		int ret = FUNC10(pdev);
		if (ret) {
			FUNC2(bridge);
			return ret;
		}
	}

	FUNC9(pdev, bridge);
	err = FUNC0(bridge);
	if (err < 0)
		return err;

	agp_bridges_found++;
	return 0;
}