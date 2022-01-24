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
struct pci_dev {struct device_node* hdr_type; } ;
struct pci_bus {int dummy; } ;
struct eeh_dev {int mode; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EEH_DEV_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 struct pci_dev* FUNC1 (struct device_node*,struct pci_bus*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/ * FUNC3 (struct device_node*,char*,int*) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 struct pci_dev* FUNC6 (struct pci_bus*,int) ; 
 struct eeh_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct device_node*) ; 

__attribute__((used)) static struct pci_dev *FUNC9(struct pci_bus *bus,
			    struct device_node *dn)
{
	struct pci_dev *dev = NULL;
	const __be32 *reg;
	int reglen, devfn;
#ifdef CONFIG_EEH
	struct eeh_dev *edev = pdn_to_eeh_dev(PCI_DN(dn));
#endif

	FUNC8("  * %pOF\n", dn);
	if (!FUNC2(dn))
		return NULL;

	reg = FUNC3(dn, "reg", &reglen);
	if (reg == NULL || reglen < 20)
		return NULL;
	devfn = (FUNC4(reg, 1) >> 8) & 0xff;

	/* Check if the PCI device is already there */
	dev = FUNC6(bus, devfn);
	if (dev) {
		FUNC5(dev);
		return dev;
	}

	/* Device removed permanently ? */
#ifdef CONFIG_EEH
	if (edev && (edev->mode & EEH_DEV_REMOVED))
		return NULL;
#endif

	/* create a new pci_dev for this device */
	dev = FUNC1(dn, bus, devfn);
	if (!dev)
		return NULL;

	FUNC8("  dev header type: %x\n", dev->hdr_type);
	return dev;
}