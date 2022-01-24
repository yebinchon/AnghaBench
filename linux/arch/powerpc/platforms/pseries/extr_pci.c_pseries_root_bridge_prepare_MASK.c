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
struct pci_host_bridge {struct pci_bus* bus; } ;
struct pci_bus {void* cur_bus_speed; void* max_bus_speed; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 void* PCIE_SPEED_2_5GT ; 
 void* PCIE_SPEED_5_0GT ; 
 void* PCIE_SPEED_8_0GT ; 
 void* PCI_SPEED_UNKNOWN ; 
 struct device_node* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int FUNC2 (struct device_node*,char*,int*,int) ; 
 scalar_t__ FUNC3 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_host_bridge*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  pcibios_free_controller_deferred ; 
 struct device_node* FUNC5 (struct pci_bus*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(struct pci_host_bridge *bridge)
{
	struct device_node *dn, *pdn;
	struct pci_bus *bus;
	u32 pcie_link_speed_stats[2];
	int rc;

	bus = bridge->bus;

	/* Rely on the pcibios_free_controller_deferred() callback. */
	FUNC4(bridge, pcibios_free_controller_deferred,
					(void *) FUNC3(bus));

	dn = FUNC5(bus);
	if (!dn)
		return 0;

	for (pdn = dn; pdn != NULL; pdn = FUNC0(pdn)) {
		rc = FUNC2(pdn,
				"ibm,pcie-link-speed-stats",
				&pcie_link_speed_stats[0], 2);
		if (!rc)
			break;
	}

	FUNC1(pdn);

	if (rc) {
		FUNC6("no ibm,pcie-link-speed-stats property\n");
		return 0;
	}

	switch (pcie_link_speed_stats[0]) {
	case 0x01:
		bus->max_bus_speed = PCIE_SPEED_2_5GT;
		break;
	case 0x02:
		bus->max_bus_speed = PCIE_SPEED_5_0GT;
		break;
	case 0x04:
		bus->max_bus_speed = PCIE_SPEED_8_0GT;
		break;
	default:
		bus->max_bus_speed = PCI_SPEED_UNKNOWN;
		break;
	}

	switch (pcie_link_speed_stats[1]) {
	case 0x01:
		bus->cur_bus_speed = PCIE_SPEED_2_5GT;
		break;
	case 0x02:
		bus->cur_bus_speed = PCIE_SPEED_5_0GT;
		break;
	case 0x04:
		bus->cur_bus_speed = PCIE_SPEED_8_0GT;
		break;
	default:
		bus->cur_bus_speed = PCI_SPEED_UNKNOWN;
		break;
	}

	return 0;
}