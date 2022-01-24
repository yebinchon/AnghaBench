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
struct pci_dev {scalar_t__ device; int /*<<< orphan*/  vendor; int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct agp_device_ids {scalar_t__ device_id; int /*<<< orphan*/ * chipset_name; } ;
struct agp_bridge_data {int /*<<< orphan*/  mode; int /*<<< orphan*/  flags; scalar_t__ capndx; struct pci_dev* dev; int /*<<< orphan*/ * driver; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_ERRATA_FASTWRITES ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ PCI_AGP_STATUS ; 
 int /*<<< orphan*/  PCI_CAP_ID_AGP ; 
 int FUNC0 (struct agp_bridge_data*) ; 
 struct agp_bridge_data* FUNC1 () ; 
 int /*<<< orphan*/  agp_uninorth_resume ; 
 int /*<<< orphan*/  agp_uninorth_suspend ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int is_u3 ; 
 struct device_node* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int* FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 scalar_t__ FUNC7 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,struct agp_bridge_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  u3_agp_driver ; 
 struct agp_device_ids* uninorth_agp_device_ids ; 
 int /*<<< orphan*/  uninorth_agp_driver ; 
 int uninorth_rev ; 

__attribute__((used)) static int FUNC11(struct pci_dev *pdev,
			      const struct pci_device_id *ent)
{
	struct agp_device_ids *devs = uninorth_agp_device_ids;
	struct agp_bridge_data *bridge;
	struct device_node *uninorth_node;
	u8 cap_ptr;
	int j;

	cap_ptr = FUNC7(pdev, PCI_CAP_ID_AGP);
	if (cap_ptr == 0)
		return -ENODEV;

	/* probe for known chipsets */
	for (j = 0; devs[j].chipset_name != NULL; ++j) {
		if (pdev->device == devs[j].device_id) {
			FUNC3(&pdev->dev, "Apple %s chipset\n",
				 devs[j].chipset_name);
			goto found;
		}
	}

	FUNC2(&pdev->dev, "unsupported Apple chipset [%04x/%04x]\n",
		pdev->vendor, pdev->device);
	return -ENODEV;

 found:
	/* Set revision to 0 if we could not read it. */
	uninorth_rev = 0;
	is_u3 = 0;
	/* Locate core99 Uni-N */
	uninorth_node = FUNC4(NULL, "uni-n");
	/* Locate G5 u3 */
	if (uninorth_node == NULL) {
		is_u3 = 1;
		uninorth_node = FUNC4(NULL, "u3");
	}
	if (uninorth_node) {
		const int *revprop = FUNC5(uninorth_node,
				"device-rev", NULL);
		if (revprop != NULL)
			uninorth_rev = *revprop & 0x3f;
		FUNC6(uninorth_node);
	}

#ifdef CONFIG_PM
	/* Inform platform of our suspend/resume caps */
	pmac_register_agp_pm(pdev, agp_uninorth_suspend, agp_uninorth_resume);
#endif

	/* Allocate & setup our driver */
	bridge = FUNC1();
	if (!bridge)
		return -ENOMEM;

	if (is_u3)
		bridge->driver = &u3_agp_driver;
	else
		bridge->driver = &uninorth_agp_driver;

	bridge->dev = pdev;
	bridge->capndx = cap_ptr;
	bridge->flags = AGP_ERRATA_FASTWRITES;

	/* Fill in the mode register */
	FUNC8(pdev, cap_ptr+PCI_AGP_STATUS, &bridge->mode);

	FUNC9(pdev, bridge);
	return FUNC0(bridge);
}