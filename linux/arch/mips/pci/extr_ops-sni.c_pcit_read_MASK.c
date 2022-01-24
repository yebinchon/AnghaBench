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
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIMT_CONFIG_DATA ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (scalar_t__,unsigned int,int) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus, unsigned int devfn, int reg,
		      int size, u32 * val)
{
	int res;

	/*
	 * on bus 0 we need to check, whether there is a device answering
	 * for the devfn by doing a config write and checking the result. If
	 * we don't do it, we will get a data bus error
	 */
	if (bus->number == 0) {
		FUNC4(0, 0, 0x68);
		FUNC3(FUNC1(0xcfc) | 0xc0000000, 0xcfc);
		if ((res = FUNC4(0, devfn, 0)))
			return res;
		FUNC3(0xffffffff, 0xcfc);
		FUNC4(0, 0, 0x68);
		if (FUNC1(0xcfc) & 0x100000)
			return PCIBIOS_DEVICE_NOT_FOUND;
	}
	if ((res = FUNC4(bus->number, devfn, reg)))
		return res;

	switch (size) {
	case 1:
		*val = FUNC0(PCIMT_CONFIG_DATA + (reg & 3));
		break;
	case 2:
		*val = FUNC2(PCIMT_CONFIG_DATA + (reg & 2));
		break;
	case 4:
		*val = FUNC1(PCIMT_CONFIG_DATA);
		break;
	}
	return 0;
}