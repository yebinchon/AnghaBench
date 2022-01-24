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
struct agp_device_ids {char* chipset_name; scalar_t__ device_id; } ;
struct agp_bridge_data {int /*<<< orphan*/  mode; scalar_t__ capndx; int /*<<< orphan*/ * driver; struct pci_dev* dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ PCI_AGP_STATUS ; 
 int /*<<< orphan*/  PCI_CAP_ID_AGP ; 
#define  PCI_DEVICE_ID_AL_M1541 129 
#define  PCI_DEVICE_ID_AL_M1621 128 
 int FUNC0 (struct agp_bridge_data*) ; 
 struct agp_bridge_data* FUNC1 () ; 
 struct agp_device_ids* ali_agp_device_ids ; 
 int /*<<< orphan*/  ali_generic_bridge ; 
 int /*<<< orphan*/  ali_m1541_bridge ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,struct agp_bridge_data*) ; 

__attribute__((used)) static int FUNC8(struct pci_dev *pdev, const struct pci_device_id *ent)
{
	struct agp_device_ids *devs = ali_agp_device_ids;
	struct agp_bridge_data *bridge;
	u8 hidden_1621_id, cap_ptr;
	int j;

	cap_ptr = FUNC4(pdev, PCI_CAP_ID_AGP);
	if (!cap_ptr)
		return -ENODEV;

	/* probe for known chipsets */
	for (j = 0; devs[j].chipset_name; j++) {
		if (pdev->device == devs[j].device_id)
			goto found;
	}

	FUNC2(&pdev->dev, "unsupported ALi chipset [%04x/%04x])\n",
		pdev->vendor, pdev->device);
	return -ENODEV;


found:
	bridge = FUNC1();
	if (!bridge)
		return -ENOMEM;

	bridge->dev = pdev;
	bridge->capndx = cap_ptr;

	switch (pdev->device) {
	case PCI_DEVICE_ID_AL_M1541:
		bridge->driver = &ali_m1541_bridge;
		break;
	case PCI_DEVICE_ID_AL_M1621:
		FUNC5(pdev, 0xFB, &hidden_1621_id);
		switch (hidden_1621_id) {
		case 0x31:
			devs[j].chipset_name = "M1631";
			break;
		case 0x32:
			devs[j].chipset_name = "M1632";
			break;
		case 0x41:
			devs[j].chipset_name = "M1641";
			break;
		case 0x43:
			devs[j].chipset_name = "M1621";
			break;
		case 0x47:
			devs[j].chipset_name = "M1647";
			break;
		case 0x51:
			devs[j].chipset_name = "M1651";
			break;
		default:
			break;
		}
		/*FALLTHROUGH*/
	default:
		bridge->driver = &ali_generic_bridge;
	}

	FUNC3(&pdev->dev, "ALi %s chipset\n", devs[j].chipset_name);

	/* Fill in the mode register */
	FUNC6(pdev,
			bridge->capndx+PCI_AGP_STATUS,
			&bridge->mode);

	FUNC7(pdev, bridge);
	return FUNC0(bridge);
}