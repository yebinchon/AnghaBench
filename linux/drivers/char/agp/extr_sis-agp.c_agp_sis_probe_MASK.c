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
struct pci_dev {int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev; } ;
struct agp_bridge_data {int /*<<< orphan*/  mode; scalar_t__ capndx; struct pci_dev* dev; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ PCI_AGP_STATUS ; 
 int /*<<< orphan*/  PCI_CAP_ID_AGP ; 
 int FUNC0 (struct agp_bridge_data*) ; 
 struct agp_bridge_data* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct agp_bridge_data*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct agp_bridge_data*) ; 
 int /*<<< orphan*/  sis_driver ; 
 int /*<<< orphan*/  FUNC7 (struct agp_bridge_data*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct agp_bridge_data *bridge;
	u8 cap_ptr;

	cap_ptr = FUNC4(pdev, PCI_CAP_ID_AGP);
	if (!cap_ptr)
		return -ENODEV;


	FUNC2(&pdev->dev, "SiS chipset [%04x/%04x]\n",
		 pdev->vendor, pdev->device);
	bridge = FUNC1();
	if (!bridge)
		return -ENOMEM;

	bridge->driver = &sis_driver;
	bridge->dev = pdev;
	bridge->capndx = cap_ptr;

	FUNC3(bridge);

	/* Fill in the mode register */
	FUNC5(pdev, bridge->capndx+PCI_AGP_STATUS, &bridge->mode);
	FUNC7(bridge);

	FUNC6(pdev, bridge);
	return FUNC0(bridge);
}