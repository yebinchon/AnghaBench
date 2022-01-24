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
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int number; int /*<<< orphan*/ * parent; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PCIBIOS_FUNC_NOT_SUPPORTED ; 
 int PCIBIOS_SUCCESSFUL ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 scalar_t__* enable_pcie_bus_num_war ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,int,unsigned int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(unsigned int pcie_port, struct pci_bus *bus,
				    unsigned int devfn, int reg,
				    int size, u32 val)
{
	int bus_number = bus->number;

	FUNC1(pcie_port >= FUNC0(enable_pcie_bus_num_war));

	if ((bus->parent == NULL) && (enable_pcie_bus_num_war[pcie_port]))
		bus_number = 0;

	FUNC5("pcie_cfg_wr port=%d b=%d devfn=0x%03x"
		 " reg=0x%03x size=%d val=%08x\n", pcie_port, bus_number, devfn,
		 reg, size, val);


	switch (size) {
	case 4:
		FUNC3(pcie_port, bus_number, devfn >> 3,
					 devfn & 0x7, reg, val);
		break;
	case 2:
		FUNC2(pcie_port, bus_number, devfn >> 3,
					 devfn & 0x7, reg, val);
		break;
	case 1:
		FUNC4(pcie_port, bus_number, devfn >> 3,
					devfn & 0x7, reg, val);
		break;
	default:
		return PCIBIOS_FUNC_NOT_SUPPORTED;
	}
	return PCIBIOS_SUCCESSFUL;
}