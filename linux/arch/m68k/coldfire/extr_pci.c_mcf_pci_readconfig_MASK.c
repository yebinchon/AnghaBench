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
struct pci_bus {scalar_t__ number; } ;

/* Variables and functions */
 int PCIBIOS_SUCCESSFUL ; 
 unsigned long PCICAR ; 
 unsigned long PCICAR_E ; 
 size_t FUNC0 (unsigned int) ; 
 int FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,unsigned long) ; 
 int iospace ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__* mcf_host_slot2sid ; 
 unsigned long FUNC7 (scalar_t__,unsigned int,int) ; 

__attribute__((used)) static int FUNC8(struct pci_bus *bus, unsigned int devfn,
	int where, int size, u32 *value)
{
	unsigned long addr;

	*value = 0xffffffff;

	if (bus->number == 0) {
		if (mcf_host_slot2sid[FUNC0(devfn)] == 0)
			return PCIBIOS_SUCCESSFUL;
	}

	addr = FUNC7(bus->number, devfn, where);
	FUNC4(PCICAR_E | addr, PCICAR);
	FUNC2(PCICAR);
	addr = iospace + (where & 0x3);

	switch (size) {
	case 1:
		*value = FUNC1(addr);
		break;
	case 2:
		*value = FUNC5(FUNC3(addr));
		break;
	default:
		*value = FUNC6(FUNC2(addr));
		break;
	}

	FUNC4(0, PCICAR);
	FUNC2(PCICAR);
	return PCIBIOS_SUCCESSFUL;
}