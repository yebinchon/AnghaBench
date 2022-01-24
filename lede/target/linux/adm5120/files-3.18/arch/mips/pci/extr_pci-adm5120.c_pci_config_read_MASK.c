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
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_bus*,unsigned int,int) ; 
 int /*<<< orphan*/  pci_lock ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct pci_bus *bus, unsigned int devfn, int where,
		int size, u32 *val)
{
	unsigned long flags;
	u32 data;

	FUNC5(&pci_lock, flags);

	FUNC7(FUNC3(bus, devfn, where));
	data = FUNC4();

	FUNC0("PCI: cfg_read  %02u.%02u.%01u/%02X:%01d, cfg:0x%08X",
		bus->number, FUNC2(devfn), FUNC1(devfn),
		where, size, data);

	switch (size) {
	case 1:
		if (where & 1)
			data >>= 8;
		if (where & 2)
			data >>= 16;
		data &= 0xFF;
		break;
	case 2:
		if (where & 2)
			data >>= 16;
		data &= 0xFFFF;
		break;
	}

	*val = data;
	FUNC0(", 0x%08X returned\n", data);

	FUNC6(&pci_lock, flags);

	return PCIBIOS_SUCCESSFUL;
}