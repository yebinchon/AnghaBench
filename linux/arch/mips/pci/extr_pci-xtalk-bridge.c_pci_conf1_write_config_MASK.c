#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct pci_bus {int number; } ;
struct TYPE_6__ {int /*<<< orphan*/ * c; } ;
struct bridge_regs {TYPE_3__ b_type1_cfg; TYPE_2__* b_type0_cfg_dev; } ;
struct bridge_controller {struct bridge_regs* base; } ;
struct TYPE_5__ {TYPE_1__* f; } ;
struct TYPE_4__ {int /*<<< orphan*/ * l; } ;

/* Variables and functions */
 struct bridge_controller* FUNC0 (struct pci_bus*) ; 
 int PCIBIOS_DEVICE_NOT_FOUND ; 
 int PCIBIOS_SUCCESSFUL ; 
 int PCI_DEVICE_ID_SGI_IOC3 ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int PCI_VENDOR_ID ; 
 int PCI_VENDOR_ID_SGI ; 
 int /*<<< orphan*/  b_pci_cfg ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_controller*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int,int*) ; 
 int FUNC5 (void*,int,int,int) ; 
 int FUNC6 (int,int*) ; 

__attribute__((used)) static int FUNC7(struct pci_bus *bus, unsigned int devfn,
				  int where, int size, u32 value)
{
	struct bridge_controller *bc = FUNC0(bus);
	struct bridge_regs *bridge = bc->base;
	int slot = FUNC2(devfn);
	int fn = FUNC1(devfn);
	int busno = bus->number;
	void *addr;
	u32 cf;
	int res;

	FUNC3(bc, b_pci_cfg, (busno << 16) | (slot << 11));
	addr = &bridge->b_type1_cfg.c[(fn << 8) | PCI_VENDOR_ID];
	if (FUNC4(cf, (u32 *)addr))
		return PCIBIOS_DEVICE_NOT_FOUND;

	/*
	 * IOC3 is broken beyond belief ...  Don't even give the
	 * generic PCI code a chance to look at it for real ...
	 */
	if (cf == (PCI_VENDOR_ID_SGI | (PCI_DEVICE_ID_SGI_IOC3 << 16))) {
		addr = &bridge->b_type0_cfg_dev[slot].f[fn].l[where >> 2];
		return FUNC5(addr, where, size, value);
	}

	addr = &bridge->b_type1_cfg.c[(fn << 8) | (where ^ (4 - size))];

	if (size == 1)
		res = FUNC6(value, (u8 *)addr);
	else if (size == 2)
		res = FUNC6(value, (u16 *)addr);
	else
		res = FUNC6(value, (u32 *)addr);

	if (res)
		return PCIBIOS_DEVICE_NOT_FOUND;

	return PCIBIOS_SUCCESSFUL;
}