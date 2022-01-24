#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct pci_bus {int /*<<< orphan*/  number; } ;
struct TYPE_4__ {int (* write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int (* write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int PCI_BASE_ADDRESS_0 ; 
 int PCI_BASE_ADDRESS_5 ; 
 int PCI_ROM_ADDRESS ; 
 int FUNC0 (struct pci_bus*,unsigned int) ; 
 int FUNC1 (struct pci_bus*,unsigned int,int,int,int /*<<< orphan*/ ,int) ; 
 TYPE_2__ pci_direct_conf1 ; 
 int /*<<< orphan*/  FUNC2 (struct pci_bus*) ; 
 TYPE_1__* raw_pci_ext_ops ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC6(struct pci_bus *bus, unsigned int devfn, int where,
		     int size, u32 value)
{
	int offset;

	/*
	 * On MRST, there is no PCI ROM BAR, this will cause a subsequent read
	 * to ROM BAR return 0 then being ignored.
	 */
	if (where == PCI_ROM_ADDRESS)
		return 0;

	/*
	 * Devices with fixed BARs need special handling:
	 *   - BAR sizing code will save, write ~0, read size, restore
	 *   - so writes to fixed BARs need special handling
	 *   - other writes to fixed BAR devices should go through mmconfig
	 */
	offset = FUNC0(bus, devfn);
	if (offset &&
	    (where >= PCI_BASE_ADDRESS_0 && where <= PCI_BASE_ADDRESS_5)) {
		return FUNC1(bus, devfn, where, size, value,
					       offset);
	}

	/*
	 * On Moorestown update both real & mmconfig space
	 * Note: early Lincroft silicon can't handle type 1 accesses to
	 *       non-existent devices, so just eat the write in that case.
	 */
	if (FUNC5(bus->number, devfn, where))
		return pci_direct_conf1.write(FUNC2(bus), bus->number,
					      devfn, where, size, value);
	return raw_pci_ext_ops->write(FUNC2(bus), bus->number, devfn,
			       where, size, value);
}