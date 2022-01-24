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
struct pci_bus {int /*<<< orphan*/  number; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  RT2880_PCI_REG_CONFIG_ADDR ; 
 int /*<<< orphan*/  RT2880_PCI_REG_CONFIG_DATA ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rt2880_pci_lock ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct pci_bus *bus, unsigned int devfn,
				   int where, int size, u32 val)
{
	unsigned long flags;
	u32 address;
	u32 data;

	address = FUNC2(bus->number, FUNC1(devfn),
					 FUNC0(devfn), where);

	FUNC5(&rt2880_pci_lock, flags);
	FUNC4(address, RT2880_PCI_REG_CONFIG_ADDR);
	data = FUNC3(RT2880_PCI_REG_CONFIG_DATA);

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

	FUNC4(data, RT2880_PCI_REG_CONFIG_DATA);
	FUNC6(&rt2880_pci_lock, flags);

	return PCIBIOS_SUCCESSFUL;
}