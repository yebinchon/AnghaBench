#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct TYPE_2__ {scalar_t__ (* read ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int*) ;} ;

/* Variables and functions */
 int PCIE_CAP_OFFSET ; 
 int PCIE_VNDR_CAP_ID_FIXED_BAR ; 
 int FUNC0 (int) ; 
 int PCI_EXT_CAP_ID_VNDR ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 
 TYPE_1__* raw_pci_ext_ops ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int*) ; 

__attribute__((used)) static int FUNC5(struct pci_bus *bus, unsigned int devfn)
{
	int pos;
	u32 pcie_cap = 0, cap_data;

	pos = PCIE_CAP_OFFSET;

	if (!raw_pci_ext_ops)
		return 0;

	while (pos) {
		if (raw_pci_ext_ops->read(FUNC2(bus), bus->number,
					  devfn, pos, 4, &pcie_cap))
			return 0;

		if (FUNC0(pcie_cap) == 0x0000 ||
			FUNC0(pcie_cap) == 0xffff)
			break;

		if (FUNC0(pcie_cap) == PCI_EXT_CAP_ID_VNDR) {
			raw_pci_ext_ops->read(FUNC2(bus), bus->number,
					      devfn, pos + 4, 4, &cap_data);
			if ((cap_data & 0xffff) == PCIE_VNDR_CAP_ID_FIXED_BAR)
				return pos;
		}

		pos = FUNC1(pcie_cap);
	}

	return 0;
}