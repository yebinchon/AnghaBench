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
struct pci_bus {int /*<<< orphan*/  number; int /*<<< orphan*/  sysdata; } ;
struct oxnas_pcie {int /*<<< orphan*/  lock; scalar_t__ cfgbase; int /*<<< orphan*/  haslink; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct oxnas_pcie*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct oxnas_pcie* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct pci_bus *bus, u32 devfn,
			      int where, int size, u32 val)
{
	unsigned long flags;
	struct oxnas_pcie *pcie = FUNC5(bus->sysdata);
	unsigned offset;
	u32 value;
	u32 lanes;

	/* Only a single device per bus for PCIe point-to-point links */
	if (FUNC0(devfn) > 0)
		return PCIBIOS_DEVICE_NOT_FOUND;

	if (!pcie->haslink)
		return PCIBIOS_DEVICE_NOT_FOUND;

	offset = FUNC1(bus->sysdata, bus->number, devfn,
					  where);

	value = val << (8 * (where & 3));
	lanes = (0xf >> (4-size)) << (where & 3);
	/* it race with mem and io write, but the possibility is low, normally
	 * all config writes happens at driver initialize stage, wont interleave
	 * with others.
	 * and many pcie cards use dword (4bytes) access mem/io access only,
	 * so not bother to copy that ugly work-around now. */
	FUNC3(&pcie->lock, flags);
	FUNC2(pcie, lanes);
	FUNC6(value, pcie->cfgbase + offset);
	FUNC2(pcie, 0xf);
	FUNC4(&pcie->lock, flags);

	return PCIBIOS_SUCCESSFUL;
}