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
struct oxnas_pcie {scalar_t__ cfgbase; int /*<<< orphan*/  haslink; } ;

/* Variables and functions */
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 scalar_t__ FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (scalar_t__) ; 
 struct oxnas_pcie* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pci_bus *bus, u32 devfn, int where,
			      int size, u32 *val)
{
	struct oxnas_pcie *pcie = FUNC3(bus->sysdata);
	unsigned offset;
	u32 value;
	u32 left_bytes, right_bytes;

	/* Only a single device per bus for PCIe point-to-point links */
	if (FUNC0(devfn) > 0) {
		*val = 0xffffffff;
		return PCIBIOS_DEVICE_NOT_FOUND;
	}

	if (!pcie->haslink) {
		*val = 0xffffffff;
		return PCIBIOS_DEVICE_NOT_FOUND;
	}

	offset = FUNC1(bus->sysdata, bus->number, devfn,
					  where);
	value = FUNC2(pcie->cfgbase + offset);
	left_bytes = where & 3;
	right_bytes = 4 - left_bytes - size;
	value <<= right_bytes * 8;
	value >>= (left_bytes + right_bytes) * 8;
	*val = value;

	return PCIBIOS_SUCCESSFUL;
}