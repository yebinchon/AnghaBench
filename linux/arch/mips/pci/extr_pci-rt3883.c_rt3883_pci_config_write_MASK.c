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
struct rt3883_pci_controller {int /*<<< orphan*/  pcie_ready; } ;
struct pci_bus {int number; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  RT3883_PCI_REG_CFGADDR ; 
 int /*<<< orphan*/  RT3883_PCI_REG_CFGDATA ; 
 struct rt3883_pci_controller* FUNC2 (struct pci_bus*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct rt3883_pci_controller*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rt3883_pci_controller*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct pci_bus *bus, unsigned int devfn,
				   int where, int size, u32 val)
{
	struct rt3883_pci_controller *rpc;
	unsigned long flags;
	u32 address;
	u32 data;

	rpc = FUNC2(bus);

	if (!rpc->pcie_ready && bus->number == 1)
		return PCIBIOS_DEVICE_NOT_FOUND;

	address = FUNC3(bus->number, FUNC1(devfn),
					 FUNC0(devfn), where);

	FUNC5(rpc, address, RT3883_PCI_REG_CFGADDR);
	data = FUNC4(rpc, RT3883_PCI_REG_CFGDATA);

	switch (size) {
	case 1:
		data = (data & ~(0xff << ((where & 3) << 3))) |
		       (val << ((where & 3) << 3));
		break;
	case 2:
		data = (data & ~(0xffff << ((where & 3) << 3))) |
		       (val << ((where & 3) << 3));
		break;
	case 4:
		data = val;
		break;
	}

	FUNC5(rpc, data, RT3883_PCI_REG_CFGDATA);

	return PCIBIOS_SUCCESSFUL;
}