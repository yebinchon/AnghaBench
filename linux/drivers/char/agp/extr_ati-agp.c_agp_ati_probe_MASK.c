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
struct pci_dev {scalar_t__ device; int /*<<< orphan*/  dev; int /*<<< orphan*/  vendor; } ;
struct agp_device_ids {scalar_t__ device_id; scalar_t__ chipset_name; } ;
struct agp_bridge_data {int /*<<< orphan*/  mode; scalar_t__ capndx; int /*<<< orphan*/ * driver; struct pci_dev* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ PCI_AGP_STATUS ; 
 int /*<<< orphan*/  PCI_CAP_ID_AGP ; 
 int FUNC0 (struct agp_bridge_data*) ; 
 struct agp_bridge_data* FUNC1 () ; 
 struct agp_device_ids* ati_agp_device_ids ; 
 int /*<<< orphan*/  ati_generic_bridge ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,struct agp_bridge_data*) ; 

__attribute__((used)) static int FUNC7(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct agp_device_ids *devs = ati_agp_device_ids;
	struct agp_bridge_data *bridge;
	u8 cap_ptr;
	int j;

	cap_ptr = FUNC4(pdev, PCI_CAP_ID_AGP);
	if (!cap_ptr)
		return -ENODEV;

	/* probe for known chipsets */
	for (j = 0; devs[j].chipset_name; j++) {
		if (pdev->device == devs[j].device_id)
			goto found;
	}

	FUNC2(&pdev->dev, "unsupported Ati chipset [%04x/%04x])\n",
		pdev->vendor, pdev->device);
	return -ENODEV;

found:
	bridge = FUNC1();
	if (!bridge)
		return -ENOMEM;

	bridge->dev = pdev;
	bridge->capndx = cap_ptr;

	bridge->driver = &ati_generic_bridge;

	FUNC3(&pdev->dev, "Ati %s chipset\n", devs[j].chipset_name);

	/* Fill in the mode register */
	FUNC5(pdev,
			bridge->capndx+PCI_AGP_STATUS,
			&bridge->mode);

	FUNC6(pdev, bridge);
	return FUNC0(bridge);
}