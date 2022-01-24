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
typedef  int u32 ;
struct pci_pbm_info {int dummy; } ;
struct pci_dev {struct device_node* hdr_type; int /*<<< orphan*/  number; } ;
struct pci_bus {struct device_node* hdr_type; int /*<<< orphan*/  number; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 struct pci_dev* FUNC0 (struct pci_pbm_info*,struct device_node*,struct pci_dev*,int) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 int* FUNC2 (struct device_node*,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_pbm_info*,struct device_node*,struct pci_dev*) ; 
 scalar_t__ ofpci_verbose ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,char*,struct device_node*,...) ; 
 scalar_t__ FUNC5 (struct pci_dev*) ; 

__attribute__((used)) static void FUNC6(struct pci_pbm_info *pbm,
			    struct device_node *node,
			    struct pci_bus *bus)
{
	struct device_node *child;
	const u32 *reg;
	int reglen, devfn, prev_devfn;
	struct pci_dev *dev;

	if (ofpci_verbose)
		FUNC4(bus, "scan_bus[%pOF] bus no %d\n",
			 node, bus->number);

	child = NULL;
	prev_devfn = -1;
	while ((child = FUNC1(node, child)) != NULL) {
		if (ofpci_verbose)
			FUNC4(bus, "  * %pOF\n", child);
		reg = FUNC2(child, "reg", &reglen);
		if (reg == NULL || reglen < 20)
			continue;

		devfn = (reg[0] >> 8) & 0xff;

		/* This is a workaround for some device trees
		 * which list PCI devices twice.  On the V100
		 * for example, device number 3 is listed twice.
		 * Once as "pm" and once again as "lomp".
		 */
		if (devfn == prev_devfn)
			continue;
		prev_devfn = devfn;

		/* create a new pci_dev for this device */
		dev = FUNC0(pbm, child, bus, devfn);
		if (!dev)
			continue;
		if (ofpci_verbose)
			FUNC4(dev, "dev header type: %x\n", dev->hdr_type);

		if (FUNC5(dev))
			FUNC3(pbm, child, dev);
	}
}