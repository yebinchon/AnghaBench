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
 int PCIBIOS_SUCCESSFUL ; 
 scalar_t__ PCIE_BUS_DEVICE ; 
 scalar_t__ PCIE_DEVICE_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (struct pci_bus*,unsigned int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int,int,int,int) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, unsigned int devfn,
			      int where, int size, u32 val)
{
	u32 data;
	u32 reg = where & ~3;

	if (!FUNC0(bus, devfn))
		return PCIBIOS_DEVICE_NOT_FOUND;

	if (bus->number == PCIE_BUS_DEVICE)
		reg += PCIE_DEVICE_OFFSET;


	data = FUNC1(reg);

	data = FUNC3(data, val, where, size);
	FUNC2(data, reg);

	return PCIBIOS_SUCCESSFUL;
}